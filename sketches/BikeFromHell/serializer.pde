import processing.serial.*;

class Prototype1Serializer {
  
  final int SERIAL_TIMEOUT= 3*1000;
  Serial port;
  boolean flashing= false;
  
  // maps [LED][0=R,1=G,2=B] to LED1..LED16
  int mapA[][]= {
    {16,15,14},
    {13,12,11},
    {9,8,7},
    {6,5,4},
    {3,2,1}
  };
  int mapB[][]= {
    {1,2,3},
    {4,5,6},
    {7,8,10},
    {11,12,13},
    {14,15,16}
  };
  
  Prototype1Serializer(int baud) {
     if (Serial.list().length == 0) {
       //TODO : test whether right serial port
       port= null;
       return;
     }
     port = new Serial(BikeFromHell.this, Serial.list()[0], baud);
  }
  Prototype1Serializer() {
    this(9600);
  }
  
  class FlashingThread extends Thread {
    
    int n,vals[],ms;
    
    FlashingThread(int n,int vals[],int ms) {
      this.n= n;
      this.vals= vals;
      this.ms= ms;
    }
    
    void waitFor(int val) 
      throws ArduinoCommunicationException {
      long t0= System.currentTimeMillis();
      while (port.available() ==0)
        if ( System.currentTimeMillis()-t0 >SERIAL_TIMEOUT )
          throw new ArduinoCommunicationException("timeout ("+SERIAL_TIMEOUT+"ms)");
      int answer= port.read();
      if (val != answer)
        throw new ArduinoCommunicationException("expected "+val+" but received "+answer);
    }
    
    class ArduinoCommunicationException extends Exception {
      ArduinoCommunicationException(String s) {
        super(s);
      }
      
      @Override
        public String toString() { return getMessage(); }
    }
      
    public void run() {
      try {
        // discard input buffer
        while (port.available() >0)
          port.read();
          
        print("flashing device : ");
          
        print(" n="+n);
        port.write( (byte) n );
        waitFor(n);
        print(" ms="+ms);
        port.write( (byte) ms );
        waitFor(ms);
        
        for(int i=0; i<vals.length; i++) {
          port.write(vals[i]);
          waitFor(vals[i]);
          print(" 0x" + String.format("%02X",vals[i]));
        }
        println(" done.");
        
      } catch (ArduinoCommunicationException e) {
        println("*** communication error : " + e);
      }
      
      flashing= false;
    }
  }
  
  void flash(LedMatrix lm,final int n,int ms) {
    if (flashing) {
      println("*** still flashing");
      return;
    }
    if (port == null) {
      println("*** cannot flash : no device connected");
      return;
    }
    
    int vals[]= new int[2*n];
    for(int i=0; i<n; i++) {
      int val= 0;
      for(int j=0; j<lm.getLeds(); j++) {
        color c= lm.getColor(j,((float) i)/n);
        if (red(c) != 0)
          val |= (1 << (mapA[j][0]));
        if (green(c) != 0)
          val |= (1 << (mapA[j][1]));
        if (blue(c) != 0)
          val |= (1 << (mapA[j][2]));
      }
      // LED16 is first bit shifted
      vals[2*i]= (val&0xFF)>>8;
      vals[2*i+1]= val&0xFF;
    }
    flashing= true;
    FlashingThread ft= new FlashingThread(n,vals,ms);
    ft.start();
  }
  
  void dumpStats() {
    if (port == null) {
      println("*** cannot dump stats : no device connected");
      return;
    }
    
    StringBuffer msg= new StringBuffer();
    port.write(0);
    print("arduino stats : ");
    while(true) {
      long t0= System.currentTimeMillis();
      while (port.available() ==0)
        if ( System.currentTimeMillis()-t0 >SERIAL_TIMEOUT ) {
          println("*** TIMEOUT");
          return;
        }
      int x= port.read();
      if (x == '\n')
        break;
      msg.append((char) x);
    }
    println(msg.toString());
  }
}

