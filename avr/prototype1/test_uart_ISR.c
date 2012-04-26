// vim: set ft=cpp ai et sts=2 sw=2 ts=2:

/**
 * \file test_uart_ISR.c
 *
 * test communication settings : run minicom or similar at the
 * specified baudrate. upon every key-press, the LEDs should
 * increase in binary value...
 */

#include <avr/io.h>
#include <avr/interrupt.h>

#include "flash.h"
#include "uart.h"

uint16_t value;
uint8_t ISR_dummy;
ISR(USART_RX_vect) {
  ISR_dummy= UDR0;
  value++;
}

void setup() {
  init_flash();
  init_uart_ISR(57600);
}

void loop() {
  flashA(0,value);
}

int main(void) {
  setup();

  while(1)
    loop();
}

