#ifndef __UART_H__
#define __UART_H__

#include <stdint.h>

/**
 * initializes interrupt-driven UART at the specified baudrate.
 * you must define a ``ISR(USART_RX_vect)`` to collect received
 * data
 *
 * !param baud baudrate to for communicatin
 */
void init_uart_ISR(unsigned long baud);

/**
 * prints message to via blocking I/O
 *
 * \param msg ``\\0`` terminated string
 */
void uart_print(char *msg);

/**
 * prints hexdec representation of 16bit number via ``uart_print``
 *
 * \param x value to decode
 */
void uart_print_i(uint16_t x);

/**
 * prints error message via ``uart_print``
 *
 * \param msg message describing error
 */
void uart_error(char *msg);

#endif
