#include "usb_task.h"

#include "sleep_lock.h"

#include <udc.h>
#include <udi_cdc.h>
#include <string.h>

static volatile bool data_received = false;

#define RX_BUF_SIZE     256

static int rot13(int ch) {
    if ('a' <= ch && ch <= 'z') {
        ch = 'a' + (ch - 'a' + 13) % 26;
    } else if ('A' <= ch && ch <= 'Z') {
        ch = 'A' + (ch - 'Z' + 13) % 26;
    }
    
    return ch;
}

PT_THREAD(usb_task(struct pt *pt)) {
    static int ch;
    
    PT_BEGIN(pt);
    
    udc_start();
    udc_attach();
    
    while(1) {
        // just a simple echo with rot13
        PT_WAIT_UNTIL(pt, udi_cdc_is_rx_ready());
        ch = udi_cdc_getc();
        
        PT_WAIT_UNTIL(pt, udi_cdc_is_tx_ready());
        
        udi_cdc_putc(rot13(ch));
    }
    
    PT_END(pt);
}

void cdc_data_received(void) {
    
}

