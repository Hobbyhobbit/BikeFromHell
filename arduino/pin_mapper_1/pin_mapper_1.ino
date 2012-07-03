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
  pinMode(SINA,OUTPUT);
  pinMode(CLKA,OUTPUT);
  pinMode(LATCHA,OUTPUT);
  pinMode(SINB,OUTPUT);
  pinMode(CLKB,OUTPUT);
  pinMode(LATCHB,OUTPUT);

  Serial.begin(9600);
}

///////////////////////// test mapping
//
char which='A';
int pos=0;
void loop() {
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

