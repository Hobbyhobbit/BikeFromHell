import processing.serial.*;

class Prototype1Serializer {
  
  final int SERIAL_TIMEOUT= 3*1000;
  Serial port;
  boolean flashing= false;
  
  // maps [CAT][LED][0=R,1=G,2=B] to LED1..LED16 (NOT starting at zero !)
  // CAT=0 is for weak currents ("A")
  // CAT=1 is for more current  ("B")
  // CAT=2 is for even more current  ("B")
  // LEDs numbered top->down (with USB connector below)
  // => 16bit will be shifted MSB, A before B
  int maps_prototype2[][][]= {
    
    // not found : 7,11,12,19,20,31,32,43,44
    
   {{1,2,0},
    {4,5,3},
    {15,14,6},
    {-1,-1,13},
    {9,8,10}},

   {{29,28,30},
    {26,25,27},
    {16,17,24},
    {-1,-1,18},
    {22,23,21}},
    
   {{34,35,33},
    {37,38,36},
    {47,46,39},
    {-1,-1,45},
    {41,40,42}},
  };
  
  //TODO test prototype1 compatability
  int maps_prototype1[][][]= {
    
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
  
  int maps[][][]= maps_prototype2;
  int wordlength= 6; // in bytes
  
  // when value is GREATER (not equal!) than lims[bit], the corresponding
  // channel will be activated
  int lims[]= {60,125,220,1000};
  
  Prototype1Serializer(int baud) {
     if (Serial.list().length == 0) {
       //TODO : test whether right serial port
       port= null;
       return;
     }
     try{
       port = new Serial(BikeFromHell.this, Serial.list()[0], baud);
     } catch( Exception e ) {
       port = null;
       println("Can't establish connection. Offline mode.");
     }
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
  
  void set_bit(int[] buf,int slot,int pos) {
    if (pos < 0)
      return; // "-1" means "not found"
    buf[ (wordlength-1-pos/8) + wordlength*slot ] |= 1<<(pos%8); // MSB first !!
  }
  
  void flash(LedMatrix lm,final int n,int ms) {
//??    println("led(0)>>16=" + String.format("0x%02X",(lm.getColor(0,0)>>16) & 0xFF));
    if (flashing) {
      println("*** still flashing");
      return;
    }
    if (port == null) {
      println("*** cannot flash : no device connected");
      return;
    }

    int vals[]= new int[wordlength*n];
    for(int slot=0; slot<n; slot++) {
      
      for(int led=0; led<lm.getLeds(); led++) {
        
        color c= lm.getColor(led,((float) slot)/n);
        for(int bit=0; bit<lims.length -1; bit++) {
          
          //red
          if (((c>>16) & 0xFF) >lims[bit] && lims[bit+1] > ((c>>16) & 0xFF))
            set_bit(vals,slot,maps[bit][led][0]);
          
          //green
          if (((c>> 8) & 0xFF) >lims[bit] && lims[bit+1] > ((c>>8) & 0xFF))
            set_bit(vals,slot,maps[bit][led][1]);
            
          //blue
          if (((c>> 0) & 0xFF) >lims[bit] && lims[bit+1] > ((c>>0) & 0xFF))
            set_bit(vals,slot,maps[bit][led][2]);
        }
      }
    }
    
    // also write values for copy'n'paste into arduino sketch
    print("\n\n");
    for(int slot=0; slot<n; slot++) {
      print("\t");
      for(int j=0; j<wordlength; j++)
        print( String.format("0x%02X, ",vals[slot*wordlength+j]) );
      print(" // slot "+slot+"\n");
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

