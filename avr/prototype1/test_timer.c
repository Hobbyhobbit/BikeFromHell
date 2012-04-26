// vim: set ft=cpp ai et sts=2 sw=2 ts=2:

/**
 * \file test_timer.c
 *
 * tests timer
 */

#include <avr/io.h>
#include <avr/interrupt.h>

#include "flash.h"
#include "timer.h"

uint8_t timer_counter;
uint8_t timer_flag;
uint16_t value;

ISR(TIMER1_OVF_vect) {
  timer_counter++;
  // 16e6 /  2**16 == 244 : i.e. about 1/s
  if (timer_counter == 244) {
    timer_counter= 0;
    timer_flag= 1;
  }
}

void init_timer() {
  // initialize timer1 (16bit)
  TCCR1A = 0; // normal mode
  TCCR1B = (1<<CS10); // no prescaling
  TIMSK1 = (1<<TOIE1); // enable overflow interrupt
  sei(); // enable global interrupts
}


void set_all() {
  value= 0xFFFF;
}

void setup() {
  init_flash();
  // use 16bit timer to count-up binary LED code
  //init_timer();
  // turn on all LEDs after 1 second
  timeout_set(1000,set_all);
}

void loop() {
  if (timer_flag) {
    timer_flag= 0;
    value++;
  }
  flashAB(0,value);
}

int main() {
  setup();
  value= 3;
  for(;;)loop();
  return 0;
}

