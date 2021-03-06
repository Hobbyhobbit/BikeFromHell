// vim: set ft=cpp ai et sts=2 sw=2 ts=2:

#include <SPI.h>

#define LATCH 9 

//void __cxa_pure_virtual() {}

int pos=0;
int i;

void setup() {
  SPI.begin();
  // we are SO msb
  SPI.setBitOrder(MSBFIRST);

//  pinMode(LATCH,OUTPUT);

  for(i=0; i<6; i++)
    SPI.transfer(0);

  Serial.begin(9600);
}

///////////////////////// test mapping
//
void loop() {
  int x;
  unsigned int val;
  if (Serial.available()) {
    x= Serial.read();
    if ( (x|0x20) == 'u' && pos<6*8 )
      pos++;
    else if ( (x|0x20) == 'd' && pos>0)
      pos--;
    else {
      Serial.write("???\n\r");
      return;
    }

    Serial.print("pos=");
    if (pos<10) Serial.print(" ");
    Serial.print(pos);
    Serial.print(" : ");
    // empty MSB bytes
    for(i=0; i<5-pos/8; i++) {
      SPI.transfer(0);
      Serial.write("00");
    }
    // byte containing one bit
    if (1<<(pos%8) < 0x10) Serial.print("0");
    Serial.print( 1<<(pos%8),16);
    SPI.transfer( 1<<(pos%8) );
    // empty LSB bytes
    for(i=0; i<pos/8; i++) {
      SPI.transfer(0);
      Serial.write("00");
    }
    Serial.print("\r\n");
  }
}

