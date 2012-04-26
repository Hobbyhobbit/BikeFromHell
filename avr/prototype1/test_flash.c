// vim: set ft=cpp ai et sts=2 sw=2 ts=2:

#include <avr/io.h>
#include <avr/interrupt.h>

#include "flash.h"


void setup() {
  init_flash();
}

uint8_t i,j,k;
void loop() {

  if (++i ==0)
    if (++j ==0)
      flashA(0,++k);

}

int main(void) {
  setup();

  while(1)
    loop();
}

