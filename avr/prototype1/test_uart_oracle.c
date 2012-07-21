// vim: set ft=cpp ai et sts=2 sw=2 ts=2:

/**
 * \file test_uart_oracle.c
 *
 * outputs intelligent answers to intelligent questions
 *
 * use this to test uart communication (e.g. bluetooth module)
 *
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <stdlib.h>

#include "uart.h"

#define BAUDRATE 9600

unsigned long seed __attribute__ ((section (".noinit")));

char *MESSAGES[] = {
	"you were wrong",
	"stop doing that",
	"thou shall not",
	"that's exactly what I said",
	"just keep going on",
	"are you crazy !?",
};

#define BUFSIZE 128
uint8_t buf[BUFSIZE];
uint8_t idx;
ISR(USART_RX_vect) {
	buf[idx] = UDR0;

	if (buf[idx] == '\n' ||
	    buf[idx] == '\r') {
		uart_print("\n\r");
		uart_print(MESSAGES[random() % sizeof(MESSAGES)/sizeof(char *)]);
//		uart_print(MESSAGES[ 2 ]);
		uart_print("\n\r");
		uart_print("\n\r");
		idx= 0;
	}

	if (idx+1 < BUFSIZE)
		idx++;
}

int main(void) {
	idx= 0;

//	srandom( seed );
	init_uart_ISR( BAUDRATE );

	for(;;) {
	}
}
