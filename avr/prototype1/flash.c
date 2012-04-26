// vim: set ft=cpp ai et sts=2 sw=2 ts=2:

#include <avr/io.h>
#include "flash.h"


void init_flash() {
  // logic one = output pin
  SINA_DDR |= (1<<SINA_PIN);
  SINB_DDR |= (1<<SINB_PIN);
  CLKA_DDR |= (1<<CLKA_PIN);
  CLKB_DDR |= (1<<CLKB_PIN);
  LATCHA_DDR |= (1<<LATCHA_PIN);
  LATCHB_DDR |= (1<<LATCHB_PIN);
}

void flashAB(uint8_t which,uint16_t value) {
  uint16_t mask;

  // close latch
  if (which == 0) LATCHA_PORT &= ~(1<<LATCHA_PIN);
  else            LATCHB_PORT &= ~(1<<LATCHB_PIN);

  mask= 0x8000;
  while (mask != 0) {

    // clock low
    if (which == 0)
      CLKA_PORT &= ~(1<<CLKA_PIN);
    else
      CLKB_PORT &= ~(1<<CLKB_PIN);
    
    if ((mask & value) == 0) {
      if (which == 0)
        SINA_PORT &= ~(1<<SINA_PIN);
      else
        SINB_PORT &= ~(1<<SINB_PIN);
    } else {
      if (which == 0)
        SINA_PORT |= (1<<SINA_PIN);
      else
        SINB_PORT |= (1<<SINB_PIN);
    }

    // SIN read on raising clock
    if (which == 0)
      CLKA_PORT |= (1<<CLKA_PIN);
    else
      CLKB_PORT |= (1<<CLKB_PIN);

    mask >>= 1;
  }

  // open latch
  if (which == 0) LATCHA_PORT |=  (1<<LATCHA_PIN);
  else            LATCHB_PORT |=  (1<<LATCHB_PIN);
}

void flashA(int a,int b) {
  flashAB(0, (a<<8) | b);
}
void flashB(int a,int b) {
  flashAB(1, (a<<8) | b);
}
