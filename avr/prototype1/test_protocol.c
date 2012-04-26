// vim: set ft=cpp ai et sts=2 sw=2 ts=2:

/**
 * \file test_protocol.c
 *
 * implement simple protocol with two modes
 *
 *   - text based commands to set and read values
 *   - fast binary mode to stream messages setting LED values
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <string.h>

#include "flash.h"
#include "uart.h"
#include "util.h"
#include "timer.h"


#define CMD_BUFSIZE 20
char cmd_buf[CMD_BUFSIZE];

uint8_t bufi; /**< to read into ``cmd_buf`` and ``led_buf`` */

/**
 * state-variable for ISR receive handler:
 *
 *   - ``0`` : receiving text command : copying into ``cmd_buf``
 *   - ``1`` : receiving binary message : waiting for ``n``
 *   - ``2`` : receiving binary message : MSB byte of ``ms``
 *   - ``3`` : receiving binary message : LSB byte of ``ms``
 *   - ``4`` : receiving binary message : copying into ``led_buf``
 */
uint8_t rx_state;

#define MAXN 50 /**< maximal number of ``LED`` configurations */
#define SLOTSIZE 2 /**< number of bytes per slot */
#define LED_BUFSIZE (SLOTSIZE*MAXN)
uint8_t led_buf[LED_BUFSIZE]; /**< BYTE-based buffer for LED configurations */
volatile uint8_t led_n; /**< number of slots in led_buf; set to ``0`` when pausing */
volatile uint8_t led_i; /**< index into ``led_buf`` for playback */
volatile uint16_t ms; /**< delay in milliseconds between slots */
volatile uint16_t counter; /**< used by the timer */

volatile uint16_t debug=0;


volatile uint16_t value;

void cmd_dump_info() {
  uart_print("value=");
  uart_print_i(value);
  uart_print(" led_n=");
  uart_print_i((uint16_t) led_n);
  uart_print(" ms=");
  uart_print_i(ms);
  uart_print(" rx_state=");
  uart_print_i(rx_state);
  uart_print(" led_i=");
  uart_print_i((uint16_t) led_i);
  uart_print(" bufi=");
  uart_print_i((uint16_t) bufi);
  uart_print(" counter=");
  uart_print_i(counter);
  uart_print(" debug=");
  uart_print_i(debug);
  uart_print("\n");
}

void reset() {
  // d'oh
  uart_error("timeout");
  cmd_dump_info();
  rx_state=0;
}

volatile uint8_t rx;
ISR(USART_RX_vect) {

  rx= UDR0;

  if (rx_state == 0) {

    // entering binary mode ?
    if (rx == 0) {
      rx_state= 1;
      bufi= 0;
      timeout_set(100,reset);
    } 
    
    // else: reading command
    else if (rx == '\n' || rx == '\r') {

      // ignore trailing '\r' & "empty" command
      if (bufi) {

        if (strncmp(cmd_buf,"info",4)==0)
          cmd_dump_info();
        else if (strncmp(cmd_buf,"all",3)==0)
          value= 0xFFFF;
        else if (strncmp(cmd_buf,"none",4)==0)
          value= 0x0000;
        else if (strncmp(cmd_buf,"set ",4)==0)
          value= parse_hex16(cmd_buf +4);
        else if (strncmp(cmd_buf,"stop",4)==0) {
          led_i= led_n; // save 8bit ;-)
          led_n= 0;
        } else if (strncmp(cmd_buf,"start",5)==0)
          led_n= led_i;
        else
          uart_error("unknown command");

      }
      bufi= 0;

    } else if(bufi == CMD_BUFSIZE) {
      uart_error("cmd_buf overflow");
      bufi= 0;

    } else
      cmd_buf[bufi++]= rx;

  } 
  
  // reading binary data into LED buf
  else {
    switch(rx_state) {
      case 1:
        led_n= rx;
        rx_state++;
        break;
      case 2:
        ms= rx << 8;
        rx_state++;
        break;
      case 3:
        ms|= rx;
        rx_state++;
        break;
      case 4:
        if (bufi >= LED_BUFSIZE) {
          uart_error("led_buf overflow");
          rx_state=0;
          timeout_delete();
          return;
        }
        led_buf[bufi++] = rx;
        // return to command-mode when reading is done
        if (bufi == led_n*SLOTSIZE) {
          rx_state= 0;
          bufi= 0;
          timeout_delete();
        }
        break;
    }
  }
}

ISR(TIMER2_OVF_vect) {
  // 64 * 256 / 16e6 == 1.024 ms
#if F_CPU != 16000000
#warning "milliseconds won't be milliseconds if you don't run at 16 MHz !"
#endif
  counter++;
}

void init_timer() {
  // set up 1ms timer using timer 2
  TCCR2A = 0; // normal mode
  TCCR2B = (1<<CS21) | (1<<CS20); // 64 prescalar
  TIMSK2 = (1<<TOIE2); // enable overflow interrupt
  sei(); // global interrupt enable
}

void setup() {
  init_flash();
  init_timer();
  init_uart_ISR(115200);
  uart_print("bfh:test_protocol\n\n");

  flashAB(0,0);
  flashAB(1,0);

  DDRB |= (1<<5);//DBG
  ms= 3000;//DBG
  led_n= 2;
  led_buf[0]=0x00;
  led_buf[1]=0x00;
  led_buf[2]=0xFF;
  led_buf[3]=0xFF;
  led_i= 0;//DBG
}


void loop() {

  while(counter<ms)
    ;
  counter=0;

  if (led_n) {

    // ship slot values
    flashAB(0,(led_buf[led_i]<<8) + led_buf[led_i +1]);

    // increase pointer to next slot
    led_i += SLOTSIZE;
    if (led_i >= SLOTSIZE*led_n)
      led_i = 0;

  } else
    // fallback
    flashAB(0,value);

}

int main(void) {
  setup();

  while(1)
    loop();
}

