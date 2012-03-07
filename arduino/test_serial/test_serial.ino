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

#define MAX 100
int mem[2*MAX];

void __cxa_pure_virtual() {}

void setup() {
  Serial.begin(9600);
  pinMode(SINA,OUTPUT);
  pinMode(CLKA,OUTPUT);
  pinMode(LATCHA,OUTPUT);
  pinMode(SINB,OUTPUT);
  pinMode(CLKB,OUTPUT);
  pinMode(LATCHB,OUTPUT);
}

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


void loop_test() {
  flashA(0xFF,0xFF);
  delay(500);
  flashA(0x00,0x00);
  delay(500);
}

#define TIMEOUT 1000
int timedRead() {
  int t0= millis();
  while(!Serial.available())
    if (millis()-t0 > TIMEOUT)
      return -1;
  return Serial.read();
}

void loop() {

  int x;

  if (Serial.available()) {
    flashA(0xFF,0xFF);

    x= Serial.read();
    if (x<=0) {
      flashA(0x00,0x00);
      return;
    }
    if (x>MAX) {
      flashA(0x00,0x00);
      Serial.write(MAX);
      return;
    }
    n= x;
    Serial.write(n);

    for(i=0; i<n; i++) {
      x= timedRead();
      if (x<0) break;
      Serial.write(x);
      mem[i*2]= x;

      x= timedRead();
      if (x<0) break;
      Serial.write(x);
      mem[i*2+1]= x;
    }

    flashA(0x00,0x00);
  }

  if (i>=n)
    i=0;

  flashA( mem[2*i],mem[2*i+1] );
  i++;

  delay(ms);
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

