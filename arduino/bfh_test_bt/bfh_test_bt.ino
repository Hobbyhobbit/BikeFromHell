// vim:set ft=cpp ai sw=2 ts=2 et sts=2:

char buf[80];
int bufi=0;

void setup() {
  Serial.begin(9600);
}

void loop() {
  if (Serial.available())
    buf[bufi++]= Serial.read();

  if (bufi==1 && (buf[bufi-1] == '\n' || buf[bufi-1] == '\r'))
    bufi= 0;

  if (bufi && (buf[bufi-1] == '\n' || buf[bufi-1] == '\r')) {
    Serial.write("you said : ");
    buf[bufi]= 0;
    Serial.write(buf);
    Serial.write("\n\r");
    bufi= 0;
  }
}

