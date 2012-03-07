// vim: set ft=cpp ai et sts=2 sw=2 ts=2:

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
int mem[2*MAX];

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

void setup() {
  Serial.begin(9600);
  pinMode(SINA,OUTPUT);
  pinMode(CLKA,OUTPUT);
  pinMode(LATCHA,OUTPUT);
  pinMode(SINB,OUTPUT);
  pinMode(CLKB,OUTPUT);
  pinMode(LATCHB,OUTPUT);
  flashA(0x00,0x00);
  flashB(0x00,0x00);

  // flashing pattern indicates running
  n=2;
  mem[0]= 0x00;
  mem[1]= 0x00;
  mem[2]= 0xFF;
  mem[3]= 0xFF;
  ms= 200;
}

#define TIMEOUT 1000
// reads a value within some timeout and acknowledges it
int timedRead() {
  int t0= millis(),ret;
  while(!Serial.available())
    if (millis()-t0 > TIMEOUT)
      return -1;
  ret= Serial.read();
  if (ret>0)
    Serial.write(ret);
  return ret;
}

void loop() {

  int x;

  if (Serial.available()) {
    // visual feedback
    flashA(0xFF,0xFF);

    // number of values
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
    if (x>MAX)
      x= MAX;
    n= x;

    // delay in ms
    ms= timedRead();

    for(i=0; i<2*n; i++) {
      x= timedRead();
      if (x<0) break;
      mem[i]= x;
    }

    flashA(0x00,0x00);
  }

  if (i>=n) {
    // measure microseconds per cycle
    if (micro_start >= 0 && micros()<micro_start)
      micro_cycle= micros()-micro_start;
    micro_start= micros();
    i=0;
  }

  // send values
  flashA( mem[2*i],mem[2*i+1] );
  i++;

  if (ms>0)
    delay(ms);
}

void loop_test() {
  flashA(0xFF,0xFF);
  delay(500);
  flashA(0x00,0x00);
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

