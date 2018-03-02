#include "usb_task.h"

#include "message.h"
#include "sleep_lock.h"

#include <udc.h>
#include <udi_cdc.h>
#include <string.h>

#define RX_BUFFER_SIZE_MIN              64
#define RX_BUFFER_SIZE_INCREMENT        64

#define TX_QUEUE_SIZE                   8

static uint8_t *rx_buf = NULL;
static iram_size_t rx_buf_size = 0;
static iram_size_t rx_count = 0;

typedef struct {
    const void *message;
    iram_size_t message_length;
    uint8_t mem_space;
} tx_message_t;

static tx_message_t tx_queue[TX_QUEUE_SIZE] = {};
static uint8_t tx_head = 0, tx_count = 0;
static iram_size_t tx_msg_offset = 0;

static PT_THREAD(rx_task(struct pt *pt));
static PT_THREAD(tx_task(struct pt *pt));

PT_THREAD(usb_task(struct pt *pt)) {
    static struct pt rx_pt, tx_pt;
    
    PT_BEGIN(pt);
    
    PT_INIT(&rx_pt);
    PT_INIT(&tx_pt);
    
    udc_start();
    udc_attach();
    
    while(1) {
        rx_task(&rx_pt);
        tx_task(&tx_pt);
        PT_YIELD(pt);
    }
    
    PT_END(pt);
}

// determine the size we want for the RX buffer to hold at least
// 'content_size' bytes
static iram_size_t rx_buf_size_for(iram_size_t content_size) {
    iram_size_t size = content_size > 0 ? RX_BUFFER_SIZE_MIN : 0;
    while (size < content_size) size += RX_BUFFER_SIZE_INCREMENT;
    return size;
}

// resize the RX buffer so it can hold at least 'content_size' bytes
static bool rx_buf_resize(iram_size_t content_size) {
    iram_size_t new_size = rx_buf_size_for(content_size);
    if (new_size == rx_buf_size) return true;
    
    if (new_size == 0 && rx_buf != NULL) {
        free(rx_buf);
        rx_buf = NULL;
        rx_buf_size = 0;
        
        return true;
    }
    
    void *new_buf = realloc(rx_buf, new_size);
    
    if (new_buf == NULL) return false;
    
    rx_buf = new_buf;
    rx_buf_size = new_size;
    return true;
}

// try to read some data, and process any completed messages.
// 'count' is taken as a hint - the actual read may be more or less.
static bool rx_bytes(iram_size_t count) {
    if (count == 0) return true;
    
    if (!rx_buf_resize(rx_count + count)) {
        if (rx_buf_size == rx_count) {
            // failed to realloc, and buffer is full.  give up on this packet.
            // specifically:
            //   - discard the packet
            //   - send OOM message
            //   - return false to signal to main loop that the rest of the
            //     current packet should get flushed.
            rx_count = 0;
            rx_buf_resize(0);
            
            msg_send_error(oom_pstr, &usb_send_message);
            
            return false;
        }
    }
    
    // adjust potential read size to the space actually available
    count = rx_buf_size - rx_count;
    iram_size_t nb_avail_data = udi_cdc_read_no_polling(rx_buf + rx_count, count);
    
    // compute correct size read; udi_cdc_read_no_polling returns amount that
    // _could_ have read, if it had been asked to.  seems like a bug, but whatever.
    // if they "fix" it this adjustment should not hurt.
    if (nb_avail_data < count) count = nb_avail_data;
    
    // check new bytes for end-of-message (NUL character)
    iram_size_t msg_start = 0;
    iram_size_t new_rx_count = rx_count + count;
    for (iram_size_t i = rx_count; i < new_rx_count; i++) {
        if (rx_buf[i] == RX_FRAME_DELIMITER) {
            rx_frame(rx_buf + msg_start, i - msg_start, &usb_send_message);
            rx_buf[i] = RX_FRAME_DELIMITER;
            msg_start = i + 1;
        }
    }
    
    rx_count = new_rx_count;
    
    // drop processed messages from buffer
    if (msg_start > 0) {
        rx_count -= msg_start;
        
        if (rx_count > 0) {
            memmove(rx_buf, rx_buf + msg_start, rx_count);
        }
        
        // try to reduce buffer, but don't do anything if it fails.
        // (it almost certainly will not fail, and will not hurt anything if it does)
        rx_buf_resize(rx_count);
    }
    
    return true;
}

static PT_THREAD(rx_task(struct pt *pt)) {
    PT_BEGIN(pt);
    
    while(1) {
        PT_WAIT_UNTIL(pt, udi_cdc_is_rx_ready());
        if (!rx_bytes(udi_cdc_get_nb_received_data())) {
            // ran out of memory trying to receive the message.  Flush the rest.
            
            while(1) {
                PT_WAIT_UNTIL(pt, udi_cdc_is_rx_ready());
                if (udi_cdc_getc() == RX_FRAME_DELIMITER) break;
            }
        }
    }
    
    PT_END(pt);
}

bool usb_send_message(const void *buf, size_t size, msg_space_t space) {
    if (tx_count >= TX_QUEUE_SIZE) return false;
    
    uint8_t slot = (tx_head + tx_count) % TX_QUEUE_SIZE;
    tx_queue[slot] = (tx_message_t) {
        .mem_space          = space,
        .message_length     = size,
        .message            = buf,
    };
    
    tx_count++;
    return true;
}

static iram_size_t usb_send_bytes(const void *buf, iram_size_t size, uint8_t mem_space) {
    switch (mem_space) {
        default:
        case MSG_SPACE_RAM:
        case MSG_SPACE_RAM_FREE:
        {
            return size - udi_cdc_write_buf(buf, size);
        }
        
        case MSG_SPACE_PROGMEM:
        {
            iram_size_t tx_available = udi_cdc_get_free_tx_buffer();
            if (tx_available < size) size = tx_available;
            
            uint8_t *ram_buf;
            while (size > 0) {
                ram_buf = malloc(size);
                if (ram_buf == NULL) size /= 2; else break;
            }
            
            if (ram_buf == NULL) return 0;
            
            memcpy_P(ram_buf, buf, size);
            
            iram_size_t sent = size - udi_cdc_write_buf(ram_buf, size);
            
            free(ram_buf);
            return sent;
        }
    }
}

static PT_THREAD(tx_task(struct pt *pt)) {
    PT_BEGIN(pt);
    
    while(1) {
        PT_WAIT_UNTIL(pt, tx_count > 0);
        
        tx_msg_offset = 0;
        while (tx_msg_offset < tx_queue[tx_head].message_length) {
            // send a chunk of the message at the head of the queue
            PT_WAIT_UNTIL(pt, udi_cdc_is_tx_ready());
            
            iram_size_t sent = usb_send_bytes(
                tx_queue[tx_head].message,
                tx_queue[tx_head].message_length - tx_msg_offset,
                tx_queue[tx_head].mem_space);
            if (sent == 0) {
                // TODO: handle more gracefully
                break;
            }
            
            tx_msg_offset += sent;
        }
        
        if (tx_queue[tx_head].mem_space == MSG_SPACE_RAM_FREE) {
            free((void *) tx_queue[tx_head].message);
        }
        
        tx_count--;
        tx_head = (tx_head + 1) % TX_QUEUE_SIZE;
        
        PT_WAIT_UNTIL(pt, udi_cdc_is_tx_ready());
        udi_cdc_putc(TX_FRAME_DELIMITER);
    }
    
    PT_END(pt);
}

void cdc_data_received(void) {
    
}
