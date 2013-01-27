/*
SPI Test prototype 3
 
 XLAT: pin 10
 BLANK: pin 8
 MOSI: pin 11
 SCK: pin 13
 VPRG: pin A0
*/

#define XLAT 10
#define GSCLK 9
#define BLANK 8
#define MOSI 11
#define SCK 13
#define VPRG A0



// the sensor communicates using SPI, so include the library:
#include <SPI.h>

void setup(){
  pinMode(XLAT, OUTPUT);
  pinMode(BLANK, OUTPUT);
  pinMode(MOSI, OUTPUT);
  pinMode(SCK, OUTPUT);
  pinMode(VPRG, OUTPUT);
  
  SPI.begin();
  digitalWrite(VPRG, LOW);

  digitalWrite(BLANK, LOW);
  digitalWrite(XLAT, LOW);
  digitalWrite(SCK, LOW);
  digitalWrite(MOSI, LOW);
  
  
  delay(100);
}

void loop() {
  int i;
 /*jjjj 
  SPI.transfer(0xff);
  delay(10);
  SPI.transfer(0xff);
  delay(10);
  */
    shiftOut(MOSI, SCK, MSBFIRST, 0xff);  
  for (i=0; i<46; i++) {
   // SPI.transfer(0xff);
    shiftOut(MOSI, SCK, MSBFIRST, 0xff);  
    delay(10);
  }
  digitalWrite(XLAT, HIGH);
  digitalWrite(XLAT, LOW);

  digitalWrite(13, HIGH);
  
  for (;;){
    digitalWrite(BLANK, HIGH);
    digitalWrite(BLANK, LOW);
    
    for (i=0; i<4096; i++) {
      digitalWrite(GSCLK, HIGH);
      digitalWrite(GSCLK, LOW);
    }
  }
}
  
  
