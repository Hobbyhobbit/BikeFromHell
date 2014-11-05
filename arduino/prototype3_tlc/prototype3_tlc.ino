#define XLAT 10
#define GSCLK 9
#define BLANK 8
#define MOSIx 11
#define SCKx 13
#define VPRG A0

#define BLINK 13

// the sensor communicates using SPI, so include the library:
//#include <SPI.h>

void setup(){
  pinMode(XLAT, OUTPUT);
  pinMode(BLANK, OUTPUT);
  pinMode(MOSIx, OUTPUT);
  pinMode(SCKx, OUTPUT);
  pinMode(VPRG, OUTPUT);
  pinMode(GSCLK, OUTPUT);

  //SPI.begin();
  //Serial.begin(9600);
  digitalWrite(VPRG, LOW);

  digitalWrite(BLANK, HIGH);
  digitalWrite(XLAT, LOW);
  digitalWrite(SCKx, LOW);
  digitalWrite(MOSIx, LOW);

  delay(100);
}

void loop() {
  int i;
  static int frame;
  //frame++;
  
  long data[10] = {
    0xFF0000,
    0x00FF00,
    0x0000FF,
    0x000000,
    0xFFFFFF,
    0x007070,
    0x700070,
    0x7070400,
    0xCCCCCC,
    0x000000
 };
    

  for (int led=0; led<10; led++){
    long color = data[(led+frame)%10];

    if (led%5 == 0){
      shift12Bit(MOSIx, SCKx, MSBFIRST, 0xFF);  // the unconnected channel
    }

    shift12Bit(MOSIx, SCKx, MSBFIRST, (color >> 16) & 0xFF);  // R
    shift12Bit(MOSIx, SCKx, MSBFIRST, (color >> 8 ) & 0xFF);  // G
    shift12Bit(MOSIx, SCKx, MSBFIRST, (color >> 0 ) & 0xFF);  // B
    
  }

  digitalWrite(XLAT, HIGH);
  delay(10);
  digitalWrite(XLAT, LOW);
  delay(10);
  
  // Provide PWM clock signal
  for (int s=0; s<1; s++){
    digitalWrite(BLANK, HIGH);
    digitalWrite(BLANK, LOW);

    for (i=0; i<4096; i++) {
      digitalWrite(GSCLK, HIGH);
      digitalWrite(GSCLK, LOW);
    }
  }
}

void shift12Bit(uint8_t dataPin, uint8_t clockPin, uint8_t bitOrder, byte val)
{
  /* A modification of shiftOut: The 8-Bit value is extrapolated to a 12-Bit range.
  This is achieved by appending the first four Bits to the end of the Byte:
  0x34 -> 0x343
  0x98 -> 0x989
  0x15 -> 0x151
  */
  
  int pos, i;

  for (i = 0; i < 12; i++)  {
    int pos = i % 8;
    if (bitOrder == LSBFIRST)
      digitalWrite(dataPin, !!(val & (1 << pos)));
    else      
      digitalWrite(dataPin, !!(val & (1 << (7 - pos))));

    digitalWrite(clockPin, HIGH);
    digitalWrite(clockPin, LOW);
  }
}

