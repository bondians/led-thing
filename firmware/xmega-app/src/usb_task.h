#pragma once

#include <pt.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

__attribute__((nonnull(1)))
PT_THREAD(usb_task(struct pt *pt));

__attribute__((nonnull(1)))
bool usb_send_message(const void *buf, size_t size, bool free_afterward);

__attribute__((nonnull(1)))
bool usb_send_message_P(const void *buf, size_t size);

void cdc_data_received(void);
