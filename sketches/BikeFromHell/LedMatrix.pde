

class LedMatrix {
  
  int nx,ny,x,y,w,h;
  int ledMax; // resolution per LED
  float pos; // in 0..1
  boolean interact; // whether to handle mouse events
  
  int frame,lasti,lastx,lasty;
  
  color[][] data;
  
  color black= #000000;
  color white= #FFFFFF;

  color dark= #003652;
  color medium= #00698c;
  color bright= #08a2cf;
  color nosat= #505050;
  
  LedMatrix(String name,int ledMax,int nx,int ny,int x,int y,int w,int h) {
    this.nx= nx;
    this.ny= ny;
    this.x =  x;
    this.y =  y;
    this.w =  w;
    this.h =  h;
    this.ledMax= ledMax;
    pos= 0f;
    
    frame= 0;
    lasti= -10;
    
    data= new color[ny][nx];
    for(int i=0; i<ny; i++)
      for(int j=0; j<nx; j++)
        data[i][j]= black;
  }
  
  int getLeds() {
    return ny;
  }
  int getResolution() {
    return nx;
  }
  
  void setPos(float value) {
    pos= value -int(value);
  }

  color getColor(int i,float pos) {
    int j= int(pos*nx);
    return data[i][j];
  }
  
  void setColor(int led,int i,color c) {
    data[led][i]= c;
  }
  
  void setInteract(boolean value) {
    interact= value;
  }
  
  color colorCrush(color c) {
    float r= 255*int(red  (c)/255*ledMax)/float(ledMax);
    float g= 255*int(green(c)/255*ledMax)/float(ledMax);
    float b= 255*int(blue (c)/255*ledMax)/float(ledMax);
    return color(r,g,b);
  }
  
  void draw() {
    fill(dark);
    noStroke();
    rectMode(CORNER);
    rect(x,y,w,h);
    
    int dx= mouseX- x;
    int dy= mouseY- y;
    int row=-1,column=-1; // where mouse is at
    if (interact && dx>0 && dx<w && dy>0 && dy<h) {
      column= dx*nx/w;
      row= dy*ny/h;
      
      if (mousePressed
          && ((frame-lasti>10) || lastx!=column || lasty!=row)) {
        if (mouseButton == LEFT)
          data[row][column]= color(255*ledRed  /ledMax,
                                   255*ledGreen/ledMax,
                                   255*ledBlue /ledMax);
        else
          data[row][column]= black;

        lasti= frame;
        lastx= column;
        lasty= row;
      }
    }
    
    for(int i=0; i<ny; i++)
      for(int j=0; j<nx; j++) {
//        if (data[i][j] == black)
//          continue; // keep background color
        fill( lerpColor( data[i][j],black,.3f ) );
        if (row==i && column==j)
          fill(bright);
//        if (data[i][j] == white)
//          fill(bright); // nicify
        rect(x+j*w/nx,y+i*h/ny,w/nx,h/ny); // make 'active'color
      }

    
    fill(nosat);
    rect( x+int(w*pos),y,3,h );
    /*
    fill(#000000);
    rect(0,y-2,width,2);
    set(int(pos*w  ),y-1,bright);
    set(int(pos*w-1),y-2,bright);
    set(int(pos*w+1),y-2,bright);
    */
          
    frame++;
    
  }
  
  void dumpData() {
    println("--- begin dump.matrix (NOT including this line)");
    println("LedMatrix.v1");
    for(int j=0; j<nx; j++) {
      for(int i=0; i<ny; i++)
        print( int(red  (data[i][j]))+"-"+
               int(green(data[i][j]))+"-"+
               int(blue (data[i][j]))+" ");
        println();
    }
    println("--- end dump.matrix (NOT including this line)");
  }
  
  void loadData(String fname) throws Exception {
    String[] lines= loadStrings(fname);
    
    if (lines==null) throw new Exception("could not read strings");
    if (lines.length<2 || !lines[0].equals("LedMatrix.v1"))
      throw new Exception("unknown format / wrong version");
      
    nx= lines.length-1;
    ny= (split(lines[1]," ")).length -1;
    
    for(int j=1; j<nx; j++) {
      String[] cols= split(lines[j+1]," ");
      for(int i=0; i<ny; i++) {
        String[] rgbs= split(cols[i],"-");
        // auto-crush color
        //TODO resolution should be specified in .matrix file
        data[i][j]= colorCrush(
          color(int(rgbs[0]),int(rgbs[1]),int(rgbs[2])));
      }
    }
  }
  
}
