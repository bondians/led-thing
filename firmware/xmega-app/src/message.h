#pragma once

#include <avr/pgmspace.h>
#include <stdbool.h>
#include <stdint.h>

#define RX_FRAME_DELIMITER              '\0'
#define TX_FRAME_DELIMITER              '\0'

enum {
    MSG_SPACE_RAM, // message is in RAM
    MSG_SPACE_RAM_FREE, // message is in RAM and should be free()ed after sending
    MSG_SPACE_PROGMEM, // message is in program flash
};
typedef uint8_t msg_space_t;

typedef __attribute__((nonnull(1))) bool (*msg_send_t)(const void * buf, size_t size, msg_space_t space);

extern const uint8_t oom_pstr[] PROGMEM;
extern const uint8_t decode_err_pstr[] PROGMEM;
extern const uint8_t encode_err_pstr[] PROGMEM;

__attribute__((nonnull(1)))
void msg_send_error(const uint8_t * err_msg, msg_send_t send_msg);

// this should be called whenever an interface receives a frame.  it will handle
// the frame and, if necessary, send responses using the provided callback.
__attribute__((nonnull(1, 3)))
void rx_frame(uint8_t *buf, size_t size, msg_send_t send_response);
