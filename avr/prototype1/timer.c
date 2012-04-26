
#include <avr/io.h>
#include <avr/interrupt.h>

#include "timer.h"


uint16_t timeout_left,timeout_initial; // number of milliseconds (to go)
void (*timeout_cb)(); // called when time's up

void timeout_set(uint16_t ms,void(*cb)()) {
  timeout_initial= ms;
  timeout_left= ms;
  timeout_cb= cb;

  TCCR0A = 0; // normal mode
  TCCR0B = (1<<CS01) | (1<<CS00); // 64 prescalar
  TIMSK0 = (1<<TOIE0); // enable overflow interrupt
  sei(); // global interrupt enable
}

void timeout_clear() {
  timeout_left= timeout_initial;
}

void timeout_delete() {
  TCCR0B = 0; // disable timer
}

ISR(TIMER0_OVF_vect) {
  // 64 * 256 / 16e6 == 1.024 ms
#if F_CPU != 16000000
#warning "milliseconds won't be milliseconds if you don't run at 16 MHz !"
#endif
  if (--timeout_left == 0) {
    timeout_cb();
    timeout_delete(); // single shot timeout
  }
}

