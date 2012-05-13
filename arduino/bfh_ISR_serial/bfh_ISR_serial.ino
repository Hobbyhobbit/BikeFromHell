// vim: set ft=cpp ai et sts=2 sw=2 ts=2:

// speedwise
//   - 6 Mhz / 57.6 kbaud = 277 instructions/symbol
//   - ISR : 4+3+4=11 instructions
//
// protocol goals
//   - read in data must be fast
//   - commands -> arduino : binary messages
//   - status <- arduino : streamed text
//
// protocol implementation
//   - every byte read through ISR
//   - sent as messages; after first symbol watchdog is started
//   - cancels transmission if not finished
//   - message types (first byte) :
//     - 0x00 : request status
//     - 0x01 : "image"
//       - 1 byte : slots / turn
//       - ... : data bytes to be flushed into SRs
//   - status messages are sent back as text strings, null-terminated

#include <avr/interrupt.h>

// A is the CAT further away from the USB port
// (for the small currents)
#define SINA     2
#define CLKA     3
#define LATCHA   4

// A is the CAT further closer to the USB port
// (for the large currents)
#define SINB     13
#define CLKB     12
#define LATCHB   11

void __cxa_pure_virtual() {}

void flashA(int a,int b) {
  int mask;

  mask= 0x80;
  while(mask != 0) {
    digitalWrite(CLKA,LOW);
    if ((mask & a) == 0)
        digitalWrite(SINA,LOW);
    else
        digitalWrite(SINA,HIGH);
    digitalWrite(CLKA,HIGH);
    mask >>= 1;
  }
  mask= 0x80;
  while(mask != 0) {
    digitalWrite(CLKA,LOW);
    if ((mask & b) == 0)
        digitalWrite(SINA,LOW);
    else
        digitalWrite(SINA,HIGH);
    digitalWrite(CLKA,HIGH);
    mask >>= 1;
  }

  digitalWrite(LATCHA,HIGH);
  digitalWrite(LATCHA,LOW); 
}
void flashB(int a,int b) {
  int mask;

  mask= 0x80;
  while(mask != 0) {
    digitalWrite(CLKB,LOW);
    if ((mask & a) == 0)
        digitalWrite(SINB,LOW);
    else
        digitalWrite(SINB,HIGH);
    digitalWrite(CLKB,HIGH);
    mask >>= 1;
  }
  mask= 0x80;
  while(mask != 0) {
    digitalWrite(CLKB,LOW);
    if ((mask & b) == 0)
        digitalWrite(SINB,LOW);
    else
        digitalWrite(SINB,HIGH);
    digitalWrite(CLKB,HIGH);
    mask >>= 1;
  }

  digitalWrite(LATCHB,HIGH);
  digitalWrite(LATCHB,LOW); 
}

void setup_uart(unsigned long baud) {
  uint16_t ubrr;
  // use async double speed by default
  UCSR0A = (1<<U2X0);
  // src : datasheet table 19-1 (double speed)
  ubrr = (F_CPU / 4 / baud - 1) / 2;
  UBRR0H = ubrr >> 8;
  UBRR0L = ubrr;
  // enable module : enable receiver, transciever, rx interrupt
  UCSR0B = (1<<RXEN0) | (1<<TXEN0) | (1<<RXCIE0);
  UCSR0B &= ~(1<<UDRIE0);


  //Serial.begin(baud);
}

void setup() {
  pinMode(SINA,OUTPUT);
  pinMode(CLKA,OUTPUT);
  pinMode(LATCHA,OUTPUT);
  pinMode(SINB,OUTPUT);
  pinMode(CLKB,OUTPUT);
  pinMode(LATCHB,OUTPUT);

  setup_uart(57600);

  // set up ISR
}

//#define FLASH_TEST
#define COUNT_BYTES

#ifdef COUNT_BYTES
// increase by one if no byte missed; reset if error
uint8_t counter1,counter2,counter3;
// ISR called as long as RXC0 is set
ISR(USART_RX_vect) 
{
  counter1++;
#define DONT_CHECK
#ifndef DONT_CHECK
  // reading UDR0 clears RXC0
  if (counter1 != UDR0) {
    counter1= 0;
    counter2= 0;
  } else 
#endif
    if (counter1 == 0) {
    counter2++;
    if (counter2 == 0) {
      // every 879 ms at 57.6 kbaud
      counter3++;
    }
  }
}
void loop() {
  flashA(0,counter3);
}
#endif


#ifdef FLASH_TEST
// simply flash increasing counter
uint8_t i,j,k;
void loop() {

  if (++i ==0)
    if (++j ==0)
      flashA(0,++k);

}
#endif

