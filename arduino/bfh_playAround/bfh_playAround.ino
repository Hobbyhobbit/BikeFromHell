
#define SIN1     13
#define CLK1     12
#define LATCH1   11
#define SIN2     2
#define CLK2     3
#define LATCH2   4

                           // R G B
const int LED_val[5][3] = { { 0,3,0 },    // Valid range: 0...3
                            { 3,0,3 },
                            { 0,0,0 },
                            { 3,0,3 },
                            { 3,3,3 } };


const int pin_set[2][5][3] = { { {  1, 2, 3 },            //
                                 {  4, 5, 6 },           ////
                                 {  7, 9,10 },          //  //
                                 { 11,12,13 },         ////////
                                 { 14,15,16 } },      ///    ///      for the small currents
                             
                               { { 16,15,14 },          /////
                                 { 13,12,11 },          //  //
                                 {  8, 9, 7 },          //////
                                 {  6, 5, 4 },          //   //
                                 {  3, 2, 1 } } };      //////        for the bigger currents

void setup() {
  pinMode(SIN1,OUTPUT);
  pinMode(CLK1,OUTPUT);
  pinMode(LATCH1,OUTPUT);
  pinMode(SIN2,OUTPUT);
  pinMode(CLK2,OUTPUT);
  pinMode(LATCH2,OUTPUT);
  
  Serial.begin(9600); 
  
  digitalWrite(LATCH1,LOW); digitalWrite(LATCH2,LOW);
  
  refresh_LEDs();
}

void tinynap() {
  delayMicroseconds(1);
}

void refresh_LEDs(){
  // Mapping
  boolean reg[2][16] = {{0}};
  
  for (int i=0; i<15; i++){
    reg[0][ pin_set[0][i/3][i%3]-1 ] = LED_val[4-i/3][i%3] % 2;
    reg[1][ pin_set[1][i/3][i%3]-1 ] = LED_val[4-i/3][i%3] / 2;
  }
  
  // Log:
  Serial.print( "REG0/A: ");
  for (int i=0; i<16; i++){
    Serial.print( reg[0][i] ); Serial.print(" ");
  }
  Serial.println();
  Serial.print( "REG1/B: ");
  for (int i=0; i<16; i++){
    Serial.print( reg[1][i] ); Serial.print(" ");
  }
  Serial.println();
  
  // Ship the values!
  for (int i=0; i<16; i++) {
    digitalWrite(CLK1,LOW);
    digitalWrite(CLK2,LOW);
    tinynap();
   
    // Faint LEDs
    if ( reg[0][i] ) {
      digitalWrite(SIN2,HIGH);
    }
    else {
      digitalWrite(SIN2,LOW);
    }
    
    // Bright LEDs
    if ( reg[1][i] ) {
      digitalWrite(SIN1,HIGH);
    }
    else {
      digitalWrite(SIN1,LOW);
    }
    
    digitalWrite(CLK1,HIGH); digitalWrite(CLK2,HIGH);
    tinynap();
  }
  
  digitalWrite(LATCH1,HIGH); digitalWrite(LATCH2,HIGH);
  tinynap();
  digitalWrite(LATCH1,LOW); digitalWrite(LATCH2,LOW);
}

void loop() {
}


