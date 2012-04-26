
#include "uart.h"
#include <avr/io.h>
#include <avr/interrupt.h>

void init_uart_ISR(unsigned long baud) {
  uint16_t ubrr;
  // use async double speed by default
  UCSR0A = (1<<U2X0);
  // src : datasheet table 19-1 (double speed)
  ubrr = F_CPU / (8*baud) - 1;
  UBRR0H = ubrr >> 8;
  UBRR0L = ubrr;
  // enable module : enable receiver, transciever, rx interrupt
  UCSR0B |= (1<<RXEN0) | (1<<TXEN0) | (1<<RXCIE0);
  UCSR0B &= ~(1<<UDRIE0);
  // global interrupt enable
  sei();
}


void uart_print(char *msg) {
  while(*msg) {
    while(!(UCSR0A & (1<<UDRE0)));
    UDR0= *msg++;
  }
}

void uart_print_i(uint16_t x) {
  char buf[5];
  uint8_t i;
  for(i=0; i<4; i++,x<<=4)
    if (x>=0xA000)
      buf[i]= (x >> 12) - 0x0a + 'A';
    else
      buf[i]= (x >> 12) + '0';
  buf[i]= 0;
  uart_print(buf);
}

void uart_error(char *msg) {
  uart_print("* ");
  uart_print(msg);
  uart_print("\n");
}

