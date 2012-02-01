
class WheelControl {

  LedMatrix matrix;
  int x,y,r,space; // wheel position & size
  
  WheelControl(int x,int y,int r,int space,LedMatrix matrix) {
    this.x= x;
    this.y= y;
    this.r= r;
    this.space= space;
    this.matrix= matrix;
  }
  
  void draw() {
  }
  
}


class SpinningWheel extends WheelControl {
  
  float pos; // absolute wheel position in rad
  float lastPos; // where lights were drawn for the last time
  float delta; // difference to what is loaded from ledMatrix
  
  SpinningWheel(int x,int y,int r,int space,LedMatrix matrix) {
    super(x,y,r,space,matrix);
    lastPos= 0; // assume we start at pos=0
  }
  
  public void setPos(float pos) {
    this.pos= pos;
  }
  
  public void setDelta(float delta) {
    this.delta= delta;
  }
  
  void draw() {
    /*
    int sz=200;
    stroke(#505050);
    fill(0,255- int(smear*255));
    ellipseMode(CORNER);
    ellipse(250,50,sz,sz);
    line(350,150,350+cos(pos*2*PI)*sz/2,150+sin(pos*2*PI)*sz/2);
    */
    int rw= 100;
    translate(x,y);
    ellipseMode(CENTER);
    
    fill(0, 100 - int(smear*100));
    stroke(#505050);
    ellipse(0,0,2*r,2*r);
  //  line(0,0,cx,cy);
    
    // draw lights
    for(int i=0; i<matrix.getLeds(); i++)
      {
      // draw as many circles as neccessary to connect to last
      // drawn circle...
      float tmp= lastPos;
      while(tmp<=pos)
      {
        float ir= (rw - space)*i/matrix.getLeds() +15;
        float mpos= tmp+delta - int(tmp+delta);
        color c= matrix.getColor(i,mpos);
        
        if (c != #000000)
        {
          fill(c);
          noStroke();
          float cx= ir*sin(tmp*2*PI);
          float cy=-ir*cos(tmp*2*PI);
          ellipse( cx,cy,10,10 );
        }
        
        tmp+= asin( 1f/ir ); //TODO? optimize this value
      }
    }
    
    lastPos= pos;
    resetMatrix();
  }
}

class ImageWheel extends WheelControl {
  
  PImage img;
  color[][] data;

  int mx,my;     // mouse pos when clicked
  float phi=0f;  // turn img
  float scl=1f;  // scale img
  int dx=0,dy=0; // translate img
  float lastPhi,lastScl;
  int lastDx,lastDy;
  
  final static int SCALEROTATE= 0;
  final static int TRANSLATEXY= 1;
  int mode;
  
  ImageWheel(int x,int y,int r,int space,LedMatrix matrix) {
    super(x,y,r,space,matrix);
    data= new color[matrix.getLeds()][matrix.getResolution()];
  }
  
  void setImage(PImage img) {
    this.img = img;
  }
  
  void mousePressed() {
    mx= mouseX;
    my= mouseY;
    lastPhi= phi;
    lastScl= scl;
    lastDx= dx;
    lastDy= dy;
    
    if ( abs(mx-(x+dx))<scl*img.width/4
      && abs(my-(y+dy))<scl*img.height/4 )
      mode= TRANSLATEXY;
    else
      mode= SCALEROTATE;
  }
  
  float getRadius(int x,int y) {
    return sqrt( (this.x-x)*(this.x-x) + (this.y-y)*(this.y-y) );
  }
  float getPhi(int x,int y) {
    if (x == 0 && y>0) return  PI/2;
    if (x == 0 && y<0) return -PI/2;
    return atan( (float)(y)/x );
  }
  
  void mouseDragged() {
    if (mode == TRANSLATEXY) {
      dx= lastDx+ mouseX - mx;
      dy= lastDy+ mouseY - my;
    }
    if (mode == SCALEROTATE) {
      phi= lastPhi+ getPhi(mouseX,mouseY) - getPhi(mx,my);
      scl= lastScl* getRadius(mouseX,mouseY) / getRadius(mx,my);
    }
  }
  
  void applyData() {
    for(int led=0; led<matrix.getLeds(); led++)
      for(int i=0; i<matrix.getResolution(); i++)
        matrix.setColor(led,i,data[led][i]);
    println("applied data");
  }
  
  void resetImage() {
    phi=0f;
    scl=1f;
    dx=dy=0;
  }
  
  void draw() {
    translate(x,y);
    ellipseMode(CENTER);
    imageMode(CENTER);
    rectMode(CENTER);
    
    // draw img
    pushMatrix();
    translate(dx,dy);
    scale(scl);
    rotate(phi);
    image(img,0,0,r*2,r*2);
    popMatrix();
    
    // get LED data before dimming
    for(int led=0; led<matrix.getLeds(); led++)
      for(int i=0; i<matrix.getResolution(); i++)
      {
        float lr  = space + float(r-space)/matrix.getLeds() *led;
        float lphi= 2*PI*i/matrix.getResolution();
        int lx= int(screenX(lr*cos(lphi),lr*sin(lphi)));
        int ly= int(screenY(lr*cos(lphi),lr*sin(lphi)));
        data[led][i]= matrix.colorCrush( get( lx,ly ) );
      }
      
    // dim image drawn before
    pushMatrix();
    translate(dx,dy);
    scale(scl);
    rotate(phi);
    fill(0,150);
    rect(0,0,r*2,r*2);
    popMatrix();
    
    // draw wheel contour
    stroke(#505050);
//  strokeWeight(3);
    noFill();
    ellipse(0,0,r*2,r*2);

    // draw lights    
    for(int led=0; led<matrix.getLeds(); led++)
      for(int i=0; i<matrix.getResolution(); i++)
      {
        float lr  = space + float(r-space)/matrix.getLeds() *led;
        float lphi= 2*PI*i/matrix.getResolution();
        int lx= int(lr*cos(lphi));
        int ly= int(lr*sin(lphi));
        
        noStroke();
        fill(data[led][i]);
        ellipse(lx,ly,8,8);
      }
    
    resetMatrix();
  }
}


