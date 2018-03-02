#include "message.h"

#include <cobsr.h>
#include <stdlib.h>
#include <string.h>

// using COBSR for framing
#define FRAME_DECODE_DST_BUF_LEN_MAX        COBSR_DECODE_DST_BUF_LEN_MAX
#define FRAME_DECODE_OK                     COBSR_DECODE_OK
#define FRAME_ENCODE_DST_BUF_LEN_MAX        COBSR_ENCODE_DST_BUF_LEN_MAX
#define FRAME_ENCODE_OK                     COBSR_ENCODE_OK

#define frame_decode                        cobsr_decode
#define frame_decode_result                 cobsr_decode_result
#define frame_encode                        cobsr_encode
#define frame_encode_result                 cobsr_encode_result

// TODO: properly pre-encode error messages
const uint8_t oom_pstr[] PROGMEM = "Out of memory!";
const uint8_t decode_err_pstr[] PROGMEM = "Decode error!";
const uint8_t encode_err_pstr[] PROGMEM = "Encode error!";

void msg_send_error(const uint8_t *err_msg, msg_send_t send_msg) {
    send_msg(err_msg, strlen_P((const char *) err_msg), MSG_SPACE_PROGMEM);
}

static int rot13(int ch) {
    if ('a' <= ch && ch <= 'z') {
        ch = 'a' + (ch - 'a' + 13) % 26;
    } else if ('A' <= ch && ch <= 'Z') {
        ch = 'A' + (ch - 'A' + 13) % 26;
    }
    
    return ch;
}

static void rx_message(uint8_t *msg, size_t size, msg_send_t send_response) {
    // got a message.  For testing:
    //      1. ROT13 it in-place
    //      2. encode it into a newly allocated buffer and send it back
    
    size_t out_bufsz = FRAME_ENCODE_DST_BUF_LEN_MAX(size);
    uint8_t *out = malloc(out_bufsz);
    if (out == NULL) {
        msg_send_error(oom_pstr, send_response);
        return;
    }
    
    for (size_t i = 0; i < size; i++) {
        msg[i] = rot13(msg[i]);
    }
    
    frame_encode_result enc_result = frame_encode(out, out_bufsz, msg, size);
    if (enc_result.status != FRAME_ENCODE_OK) {
        free(out);
        msg_send_error(encode_err_pstr, send_response);
        return;
    }
    
    if (!send_response(out, enc_result.out_len, MSG_SPACE_RAM_FREE)) {
        free(out);
    }
}

// got a frame (a run of non-zero bytes).  decode it and pass it to rx_message.
void rx_frame(uint8_t *buf, size_t size, msg_send_t send_response) {
    size_t msg_bufsz = FRAME_DECODE_DST_BUF_LEN_MAX(size);
    if (msg_bufsz < 1) msg_bufsz = 1;
    
    // TODO: implement an in-place decode, or prove that the
    // existing one is safe to use in-place
    uint8_t *msg = malloc(msg_bufsz);
    if (msg == NULL) {
        msg_send_error(oom_pstr, send_response);
        return;
    }
    
    frame_decode_result dec_result = frame_decode(msg, msg_bufsz, buf, size);
    if (dec_result.status != FRAME_DECODE_OK) {
        free(msg);
        msg_send_error(decode_err_pstr, send_response);
        return;
    }
    
    memcpy(buf, msg, dec_result.out_len);
    free(msg);
    rx_message(buf, dec_result.out_len, send_response);
}
