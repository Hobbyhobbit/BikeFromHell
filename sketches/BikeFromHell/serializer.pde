import processing.serial.*;

class Prototype1Serializer {
  
  final int SERIAL_TIMEOUT= 3*1000;
  Serial port;
  boolean flashing= false;
  
  // maps [CAT][LED][0=R,1=G,2=B] to LED1..LED16 (NOT starting at zero !)
  // CAT=0 is for weak currents ("A")
  // CAT=1 is for more current  ("B")
  // LEDs numbered top->down (with USB connector below)
  // => 16bit will be shifted MSB, A before B
  int maps[][][]= {
    
   {{1,2,3},
    {4,5,6},
    {7,9,10},
    {11,12,13},
    {14,15,16}}, // last row not tested
    
   {{16,15,14},
    {13,12,11},
    {9,8,7},
    {6,5,4},
    {3,2,1}} // last row not tested
  };
  // when value is GREATER (not equal!) than lims[bit], the corresponding
  // channel will be activated
  int lims[]= {0,0x80};
  
  Prototype1Serializer(int baud) {
     if (Serial.list().length == 0) {
       //TODO : test whether right serial port
       port= null;
       return;
     }
     port = new Serial(BikeFromHell.this, Serial.list()[0], baud);
  }
  Prototype1Serializer() {
    this(57600);
  }
  
  
  /**
   * new protocol implementation for improved speed. sends all values
   * directly without waiting for a response. in case some values are
   * not received correctly, an error will be generated that is handled
   * in the serial callback...
   */
  class NewFlashingThread extends Thread {
    
    int n,ms,vals[];
    
    NewFlashingThread(int n,int vals[],int ms) {
      this.n= n;
      this.ms= ms;
      this.vals= vals;
    }
    
    public void run() {
      port.write((byte) 0); // enter binary mode
      port.write((byte) n); // first send number of slots (8bit)
      port.write((byte) ms >> 8); // then send MSB of delay
      port.write((byte) ms & 0xFF); // then send LSB of delay
      for(int i=0; i<vals.length; i++)
        port.write((byte) vals[i]); // finally send values
      println("DONE flashing ("+vals.length+" values)");
      flashing= false;
    }
    
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
        
        if (ms>255)
          ms=255;
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
    println("led(0)>>16=" + String.format("0x%02X",(lm.getColor(0,0)>>16) & 0xFF));
    if (flashing) {
      println("*** still flashing");
      return;
    }
    if (port == null) {
      println("*** cannot flash : no device connected");
      return;
    }
    
    // n slots times number of channels times two (16bit)
    int vals[]= new int[2*maps.length*n];
    for(int i=0; i<n; i++) {
      int val[]= {0,0};
      
      for(int j=0; j<lm.getLeds(); j++) {
        color c= lm.getColor(j,((float) i)/n);
        for(int bit=0; bit<val.length; bit++) {
          
          //red
          if (((c>>16) & 0xFF) >lims[bit])
            val[bit] |= (1 << (maps[bit][j][0] -1));
          
          //green
          if (((c>> 8) & 0xFF) >lims[bit])
            val[bit] |= (1 << (maps[bit][j][1] -1));
            
          //blue
          if (((c>> 0) & 0xFF) >lims[bit])
            val[bit] |= (1 << (maps[bit][j][2] -1));
        }
      }
      // fill in MSB
      for(int bit=0; bit<val.length; bit++) {
        vals[2*maps.length*i+2*bit   ]= (val[bit]&0xFF00)>>8;
        vals[2*maps.length*i+2*bit +1]=  val[bit]&0x00FF;
      }
    }
    
    // ship the values
    flashing= true;
    NewFlashingThread ft= new NewFlashingThread(n,vals,ms);
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

