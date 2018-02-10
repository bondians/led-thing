#pragma once

#include <pt.h>

PT_THREAD(usb_task(struct pt *pt));

void cdc_data_received(void);
