// vim: set ft=cpp ai sw=2 ts=2 et sts=2:

#include <SPI.h>

// the pin to which both latches are connected
#define LATCH 11

/* the two shift registers are daisy-chained with the
 * "weak" current being connected direclty to the shield
 * therefore responding to the second byte written to the
 * SPI -- within each register, the MSB is written first
 * therefore the higher bits correspond to the higher
 * port names */

#define SPI_BYTES 2
// only use one register
/*
const uint8_t[] data={
  0xFF,0xFF,0x00,0x00 // all LEDs on 
};

/* pins MOSI, MISO, SCK, SS are defined in pins_arduino.h */

void __cxa_pure_virtual() {}

void setup() {
  SPI.begin();
  digitalWrite(LATCH,LOW);

  // for debugging
  Serial.begin(9600); 
}

// this should take approximately
// 4*8/8MHz*length *.15 == 6us *length
void flash_series(const uint8_t *ptr,int length,int delay_usec) 
{
  while(length-- >0) {
    SPI.transfer( *ptr++ );
    SPI.transfer( *ptr++ );
    SPI.transfer( *ptr++ );
    SPI.transfer( *ptr++ );

    delayMicroseconds(delay_usec);
  }
}

const uint8_t on_off[]={
  0xFF,0xFF,0x00,0x00,
  0xFF,0x00,0x00,0x00
};
const uint8_t all_off[]={
  0x00,0x00,0x00,0x00
};
const uint8_t *dummy;

void loop() {
  unsigned long time;
  int i;

  while(1) {
    time= micros();
    for(i=0; i<1000; i++) {
      flash_series(on_off,2,0);
      digitalWrite(LATCH,HIGH);
      digitalWrite(LATCH,LOW);
    }
    Serial.print("1000 executions in "); 
    Serial.print(micros()-time);
    Serial.println(" us");
  }
}

