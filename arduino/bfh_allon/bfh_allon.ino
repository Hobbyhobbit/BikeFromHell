

#define SIN1     13
#define CLK1     12
#define LATCH1   11
#define SIN2     2
#define CLK2     3
#define LATCH2   4

void setup() {
  pinMode(SIN1,OUTPUT);
  pinMode(CLK1,OUTPUT);
  pinMode(LATCH1,OUTPUT);
  pinMode(SIN2,OUTPUT);
  pinMode(CLK2,OUTPUT);
  pinMode(LATCH2,OUTPUT);
  
  digitalWrite(LATCH1,LOW);
  digitalWrite(LATCH2,LOW);
}

void tinynap() {
  delay(1); // that's REAAAALLLY long
}

void shift_all(int bit) {
  
  for(int i=0; i<16; i++) {
    digitalWrite(CLK1,LOW);
    digitalWrite(CLK2,LOW);
    tinynap();
    
    if (bit==0) {
      digitalWrite(SIN1,LOW);
      digitalWrite(SIN2,LOW);
    } else {
      digitalWrite(SIN1,HIGH);
      digitalWrite(SIN2,HIGH);
    }
    
    digitalWrite(CLK1,HIGH);
    digitalWrite(CLK2,HIGH);
    tinynap();
  }

  digitalWrite(LATCH1,HIGH);
  digitalWrite(LATCH2,HIGH);
  tinynap();
  digitalWrite(LATCH1,LOW);
  digitalWrite(LATCH2,LOW);
}

void loop() {
  shift_all(1);
  delay(200);
  shift_all(0);
  delay(200);
}


