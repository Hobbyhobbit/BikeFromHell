// vim: set ft=cpp ai et sts=2 sw=2 ts=2:

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

volatile uint16_t counter,ms;
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

int main() {

  init_timer();
  init_flash();

  // configure LED as output (active LOW)
  DDRB |= (1<<5);

  ms= 2000;

  for(;;) {
    while(counter<ms) ;
    counter= 0;
    PORTB ^= (1<<5);
    flashAB(0,0xFFFF);

    while(counter<ms) ;
    counter= 0;
    PORTB ^= (1<<5);
    flashAB(0,0x0000);
  }

}

