
void setup() {
  // put your setup code here, to run once:
  
  OCR1AH = 0x08;  // Counter Register OCR1A
  OCR1AL = 0xFF;  // to 4095
  
  ICR1H = 0x09;  // Counter Register ICR1A
  ICR1L = 0x00;  // to 4096
  
  TCCR1A = _BV(WGM11)   // Fast PWM Top=OCR1A
         | _BV(COM1A1)  // Set OC1A, Compare match, Clear bottom
         | _BV(COM1A0); // "
  TCCR1B = _BV(CS10)    // Fast PWM Top=OCR1A
         | _BV(WGM12)   // "
         | _BV(WGM13);  // "
         
  DDRB = _BV(1)   // Define PB1 (=9) as output
       | _BV(2);  // PB2=10 output as well

}

void loop() {
  //PORTB |= _BV(2);  // -> 1MHz
  //PORTB &= ~_BV(2);
  //digitalWrite(10, HIGH);  -> 70kHz
  //digitalWrite(10, LOW);
}
