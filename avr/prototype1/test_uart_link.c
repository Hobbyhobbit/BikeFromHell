// vim: set ft=cpp ai et sts=2 sw=2 ts=2:

/**
 * \file test_uart_link.c
 *
 * expects to receive 1,2,..,0xFF,0,1,2,... on UART
 *
 * outputs statistics 4.2 seconds after first char received
 *
 * results : 
 *   - 1kbaud == 100 bytes/s
 *   - no mistakes
 *   - must write entire array on computer to get full speed
 */

#include <avr/io.h>
#include <avr/interrupt.h>

#include "uart.h"

uint8_t started;

void start() {
  TCCR1A = 0; // normal mode
  TCCR1B = (1<<CS12) | (1<<CS10); // 1024 prescale
  TIMSK1 = (1<<TOIE1); // enable overflow interrupt (after 4.2s)
  sei(); // enable global interrupts
}

uint16_t counter,mistakes,ticks;
uint8_t value,prediction;

ISR(USART_RX_vect) {

  value= UDR0;

  if (!TCCR1B) {
    start();
    prediction= value;
  }

  if (prediction != value)
    mistakes++;
  counter++;
  prediction= value +1;

  ticks= TCNT1; // save timestamp (EI disabled here)
}

ISR(TIMER1_OVF_vect) {
  // interrupts are disabled in ISR...
  uart_print_i( counter );
  uart_print(" ");
  uart_print_i( mistakes );
  uart_print(" ");
  uart_print_i( ticks );
  uart_print("\n");

  // stop timer, reset
  TCCR1B = 0;
  counter= 0;
  mistakes= 0;
}

int main(void) {
  init_uart_ISR(115200);
  for(;;);
}

