// vim: set ft=cpp ai et sts=2 sw=2 ts=2:

// "serial protocol"
// a) data packet
//   - length (byte) != 0
//   - delay in ms (byte)
//   - array of length 4x length (bytes)
//     - first two bytes are shifted into CATA
//     - then  two bytes are shifted into CATB
//   => every byte is acknowledged with an echo
// b) special packet
//   - marker (byte) ==0 (also acknowledged)
//   => dump some '\n' terminated stats

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

int i=0,n=0;
int ms=100;
unsigned long micro_start=0,micro_cycle;

#define MAX 100
unsigned char mem[4*MAX];

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

void setDefaultProgram() {
  // flash 1st three leds on A
  n=2;
  ms= 200;

  mem[0]= 0x00;
  mem[1]= 0x00;
  mem[2]= 0x00;
  mem[3]= 0x00;

  mem[4]= 0xC0;
  mem[5]= 0x00;
  mem[6]= 0x00;
  mem[7]= 0x00;
}

void setup() {
  pinMode(SINA,OUTPUT);
  pinMode(CLKA,OUTPUT);
  pinMode(LATCHA,OUTPUT);
  pinMode(SINB,OUTPUT);
  pinMode(CLKB,OUTPUT);
  pinMode(LATCHB,OUTPUT);

  Serial.begin(2400);
  setDefaultProgram();
}

// returns a byte read from Serial or -1 if error
//   - waits no more than TIMEOUT milliseconds
//   - acknowledges read byte by sending it back
#define TIMEOUT 1000
int timedRead() {
  int t0= millis(),ret;
  while(!Serial.available())
    if (millis()-t0 > TIMEOUT)
      return -1;
  ret= Serial.read();
  if (ret>=0)
    Serial.write(ret);
  return ret;
}

void loop() {

  int x;

  ///////////////////////// serial communication
  //
  if (Serial.available()) {
    // visual feedback
    flashA(0xFF,0xFF);
    flashB(0x00,0x00);

    // number of values -- 0 for stats
    x= timedRead();
    if (x==0) {
      // dump stats
      Serial.write("n=");
      Serial.write(n);
      Serial.write(" us=");
      Serial.write(micro_cycle);
      Serial.write("\n");
      flashA(0x00,0x00);
      return;
    }
    if (x<0) {
      // some connection error
      flashA(0x00,0x00);
      return;
    }
    n= x;
    if (n>MAX)
      n= MAX;

    // delay in ms
    x= timedRead();
    if (x<0) {
      // some connection error
      flashA(0x00,0x00);
      return;
    }
    ms= x;

    for(i=0; i<4*n; i++) {
      x= timedRead();
      if (x<0) break;
      mem[i]= x;
    }

    flashA(0x00,0x00);
  }

  ///////////////////////// update stats
  //
  if (i>=n) {
    i=0;
    // us/cycle
    if (micro_start >= 0 && micros()<micro_start)
      micro_cycle= micros()-micro_start;
    micro_start= micros();
  }

  ///////////////////////// flash values
  //
  flashA( mem[4*i  ],mem[4*i+1] );
  flashB( mem[4*i+2],mem[4*i+3] );
  i++;

  ///////////////////////// have a break
  //
  if (ms>0)
    delay(ms);
}

///////////////////////// test mapping
//
char which='A';
int pos=0;
void loop_map() {
  int x;
  unsigned int val;
  if (Serial.available()) {
    x= Serial.read();
    if ( (x|0x20) == 'a')
      which='A';
    else if ( (x|0x20) == 'b')
      which='B';
    else if ( (x|0x20) == 'u' && pos<15)
      pos++;
    else if ( (x|0x20) == 'd' && pos>0)
      pos--;
    else {
      Serial.write("???\n");
      return;
    }
    val= 1<<pos;
    if ( (which|0x20) == 'a' ) {
      flashA( (val>>8) , (val&0xFF) );
      flashB(0,0);
    } else {
      flashB( (val>>8) , (val&0xFF) );
      flashA(0,0);
    }
    Serial.write(which);
    Serial.print(val,16);
    Serial.print("\r\n");
  }
}

void loop_shiftDown() {
  unsigned int x= 0x8000;
  while( x!= 0) {
    flashA( (x&0xFF00)>>8 , x&0xFF );
    delay(1000);
    x>>=1;
  }
  while(1);
}

void loop_xx() {
  flashA(0x00,0x00);
  flashB(0x00,0x00);
  delay(200);
  flashA(0xFF,0x0F);
  flashB(0x00,0x00);
  delay(200);
}
void loop_testAB() {
  flashA(0xFF,0xFF);
  flashB(0x00,0x00);
  delay(500);
  flashA(0x00,0x00);
  flashB(0xFF,0xFF);
  delay(500);
  flashA(0x00,0x00);
  flashB(0x00,0x00);
  delay(500);
}

void loop_pixel() {

  // see Serial.examples.pysicalPixel

  int cmd,i;

  if (Serial.available()) {

    cmd= Serial.read();
    
    if (cmd== 'H') {
      for(i=0; i<16; i++) {
        digitalWrite(CLKA,LOW);
        digitalWrite(CLKB,LOW);
        digitalWrite(SINA,HIGH);
        digitalWrite(SINB,HIGH);
        digitalWrite(CLKA,HIGH);
        digitalWrite(CLKB,HIGH);
      }
    }

    if (cmd== 'L') {
      for(i=0; i<16; i++) {
        digitalWrite(CLKA,LOW);
        digitalWrite(CLKB,LOW);
        digitalWrite(SINA,LOW);
        digitalWrite(SINB,LOW);
        digitalWrite(CLKA,HIGH);
        digitalWrite(CLKB,HIGH);
      }
    }

  digitalWrite(LATCHA,HIGH); 
  digitalWrite(LATCHB,HIGH);
  digitalWrite(LATCHA,LOW); 
  digitalWrite(LATCHB,LOW);
  }
}

void loop_echo() {

  // write something over arduino console

  int x,i;
  char msg[128];

  if (Serial.available()) {
    // dummy byte
    x= Serial.read();
    // read data
    i=0;
    while (1) {
      if ((x=Serial.read()) > 0)
        msg[i++]= (char) x;
      if (x == '\n')
        break;
    }
    // dump data back
    msg[i]= 0;
    Serial.print("i="); Serial.print(i);
    Serial.print("you said:\n");
    Serial.print( msg );
    Serial.print("that's it\n\n");
  }
}

