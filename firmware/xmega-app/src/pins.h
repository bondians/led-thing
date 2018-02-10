#pragma once

#include <ioport.h>

// IO pin assignments:
const ioport_pin_t VBAT_SENSE       = IOPORT_CREATE_PIN(PORTA, 0);
const ioport_pin_t MAIN_REG_EN      = IOPORT_CREATE_PIN(PORTA, 1);
const ioport_pin_t TEMP_ALENT       = IOPORT_CREATE_PIN(PORTA, 2);
const ioport_pin_t PWR_IN_SHDN      = IOPORT_CREATE_PIN(PORTA, 3);
const ioport_pin_t SPI_INT          = IOPORT_CREATE_PIN(PORTA, 4);
const ioport_pin_t MASTER_SYNC      = IOPORT_CREATE_PIN(PORTC, 2);
const ioport_pin_t SLAVE_SYNC       = IOPORT_CREATE_PIN(PORTC, 3);
const ioport_pin_t SPI_SS           = IOPORT_CREATE_PIN(PORTC, 4);
const ioport_pin_t SPI_MOSI         = IOPORT_CREATE_PIN(PORTC, 5);
const ioport_pin_t SPI_MISO         = IOPORT_CREATE_PIN(PORTC, 6);
const ioport_pin_t SPI_SCLK         = IOPORT_CREATE_PIN(PORTC, 7);
const ioport_pin_t LED_CLK          = IOPORT_CREATE_PIN(PORTD, 0);
const ioport_pin_t LED_D0           = IOPORT_CREATE_PIN(PORTD, 1);
const ioport_pin_t LED_D1           = IOPORT_CREATE_PIN(PORTD, 2);
const ioport_pin_t LED_D2           = IOPORT_CREATE_PIN(PORTD, 3);
const ioport_pin_t LED_D3           = IOPORT_CREATE_PIN(PORTD, 4);
const ioport_pin_t LED_D4           = IOPORT_CREATE_PIN(PORTD, 5);
const ioport_pin_t USB_DM           = IOPORT_CREATE_PIN(PORTD, 6);
const ioport_pin_t USB_DP           = IOPORT_CREATE_PIN(PORTD, 7);
const ioport_pin_t I2C_SDA          = IOPORT_CREATE_PIN(PORTE, 0);
const ioport_pin_t I2C_SCL          = IOPORT_CREATE_PIN(PORTE, 1);
const ioport_pin_t PWR_IN_GOOD      = IOPORT_CREATE_PIN(PORTE, 2);
const ioport_pin_t PWR_IN_FAULT     = IOPORT_CREATE_PIN(PORTE, 3);
