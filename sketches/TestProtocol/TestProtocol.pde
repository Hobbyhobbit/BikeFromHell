
import controlP5.*;
import processing.serial.*;

Serial port;
ControlP5 cp5;

void setup() {
  size(400,200);
  port= new Serial(this, Serial.list()[0], 115200);
  port.bufferUntil('\n');
  cp5= new ControlP5(this);
  cp5.addButton("info"  ,0,10,10,50,10);
  cp5.addButton("all"   ,0,10,30,50,10);
  cp5.addButton("none"  ,0,10,50,50,10);
  cp5.addButton("start_",0,10,70,50,10);
  cp5.addButton("stop_" ,0,10,90,50,10);

  cp5.addButton("flash1",0,70,10,50,10);

  cp5.addButton("speed" ,0,130,10,50,10);
}

void draw() {
  background(0);
}

public void info() {
  port.write("info\n");
}
public void all() {
  port.write("all\n");
}
public void none() {
  port.write("none\n");
}
public void start_() {
  port.write("start\n");
}
public void stop_() {
  port.write("stop\n");
}
boolean writing= false;
class WriterThread extends Thread {
  int count;
  WriterThread(int count) { this.count= count; }
  public void run() {
    writing= true;
    println("writing " + count + " bytes:");
    byte data[]= new byte[count];
    for(int i=0; i<count; i++)
      data[i]= (byte) (i & 0xFF);
    
    long t0= System.currentTimeMillis();
    port.write( data );
      
    writing= false;
    long ms= System.currentTimeMillis()-t0;
    println("done in " + ms + "ms" +
      "; that's " + (count/ms *8) + "kbaud/s");
  }
}
public void speed() {
  if (!writing)
    new WriterThread(20000).start();
}

public void flash1() {
  // start binary message
  port.write((byte) 0);
  // use two slots
  port.write((byte) 2);
  // wait 500ms
  port.write((byte) 0x00);
  port.write((byte) 0xFF);
  // off slot
  port.write((byte) 0xFF);
  port.write((byte) 0xFF);
  // on slot
  port.write((byte) 0xFF);
  port.write((byte) 0xFF);
}

void serialEvent(Serial p) { 
  print(p.readString());
}

