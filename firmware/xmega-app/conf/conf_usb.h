#ifndef ___n_conf_usb_h__
#define ___n_conf_usb_h__

#include "usb_task.h"

#define USB_DEVICE_VENDOR_ID                USB_VID_ATMEL
#define USB_DEVICE_PRODUCT_ID               USB_PID_ATMEL_ASF_CDC
#define USB_DEVICE_MAJOR_VERSION            1
#define USB_DEVICE_MINOR_VERSION            0
#define USB_DEVICE_POWER                    100 // Consumption on Vbus line (mA)
#define USB_DEVICE_ATTR                     USB_CONFIG_ATTR_BUS_POWERED

#define USB_DEVICE_MANUFACTURE_NAME         "ATMEL ASF"
#define USB_DEVICE_PRODUCT_NAME             "XMEGA CDC"

#define UDC_SUSPEND_EVENT()                 board_suspend()
#define UDC_RESUME_EVENT()                  board_resume()

#define UDI_CDC_PORT_NB 1
// on parts with less SRAM this is probably necessary
#define UDI_CDC_LOW_RATE

#define UDI_CDC_ENABLE_EXT(port)            true
#define UDI_CDC_DISABLE_EXT(port)           (void)port
#define UDI_CDC_RX_NOTIFY(port)             cdc_data_received()
#define UDI_CDC_SET_CODING_EXT(port,cfg)    (void)port
#define UDI_CDC_SET_DTR_EXT(port,set)       (void)port
#define UDI_CDC_SET_RTS_EXT(port,set)       (void)port

#define UDI_CDC_DEFAULT_RATE                115200
#define UDI_CDC_DEFAULT_STOPBITS            CDC_STOP_BITS_1
#define UDI_CDC_DEFAULT_PARITY              CDC_PAR_NONE
#define UDI_CDC_DEFAULT_DATABITS            8

#include <compiler.h>
#include "udi_cdc_conf.h"
#include "main.h"

#endif /* ___n_conf_usb_h__ */
