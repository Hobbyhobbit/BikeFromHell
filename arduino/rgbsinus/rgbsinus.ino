/*
  Blink
  Turns on an LED on for one second, then off for one second, repeatedly.
 
  This example code is in the public domain.
 */

int t = 0;
int fadeAmount = 5;
int r = 0;
int g = 0;
int b = 0;
float duration = 20;

void setup() {
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);   
}

void loop() {
  analogWrite(9, r);
  analogWrite(10, g);
  analogWrite(11, b);
  
  r = 255 * pow( (sin(t/duration)*0.5+0.5), 2 );
  g = 255 * pow( (sin(t/duration + 0.333 * 3.14 * 2)*0.5+0.5), 2 );
  b = 255 * pow( (sin(t/duration + 0.666 * 3.14 * 2)*0.5+0.5), 2 );
  
  t = t + 1;
  
  delay(15);
}
