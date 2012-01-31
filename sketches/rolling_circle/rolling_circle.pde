RollingCircle rc;
PImage src;
PGraphics canvas;
float zoom, step;

void setup() {
  size(500,500);
  frameRate(150);
  smooth();
  colorMode(HSB, 1.0);
  
  rc = new RollingCircle(0,height/2,height*5/11,16); 
  src = loadImage("flower.jpg");
  zoom = 0.8;
  
  canvas = createGraphics(width, height, P3D);
  canvas.smooth();
  
  
}

void draw() {
  
  println(frameRate);
  if (mouseY==0) return;
  
  fill(0, 0.01 * height/mouseY);
  rect(0,0,width,height);
  
  step = 30*mouseX/width;
  rc.move( step );
  rc.display();
  
  // draw canvas
  
  // canvas.filter(BLUR, 2); // yesses isch das langsam!
  blend(canvas,0,0,width,height,0,0,width,height,ADD);
  
  
  
}

color bitCrush ( color c, int bits ){
  
  int r = (int) red(c);
  int g = (int) green(c);
  int b = (int) blue(c);
  
  int bs = (int) pow(2, 8-bits); // bit-stuffing-factor
  
  r = bs * round(r / bs);
  g = bs * round(g / bs);
  b = bs * round(b / bs);
  
  colorMode(RGB, 255);
  c = color(r,g,b);
  colorMode(HSB, 1.0);

  return c;  
}

class Light {
  color static_light;
  int sz;
  
  Light(float pos,int size) {
    static_light = color(random(1), 1, 0.4);
    sz=size;
  }
  
  void change() {
//    col= (col+2)%256;
  }
  
  void display(float x,float y) {
    
    // canvas.fill( static_light );
    colorMode(RGB, 255);
    color c = src.get((int) ( ((x/width-0.5)/zoom+0.5) * src.width), (int) ( ((y/height-0.5)/zoom+0.5) * src.height));
    
    //c = bitCrush(c, 8);
    c = lerpColor(c, 0, 0.3); // fade brightness
    canvas.fill( c );
    colorMode(HSB, 1.0);
    canvas.noStroke();
    canvas.ellipse(x,y,sz,sz);
  }
}

class RollingCircle {
  
  float cx,cy,r;
  float angle;
  Light[] lights;
  
  RollingCircle(int center_x,int center_y,int radius,int lights_n) {
    cx= center_x;
    cy= center_y;
    r = radius;
    angle= 0;
    
    lights= new Light[lights_n];
    for(int i=0; i<lights_n; i++)
      lights[i]= new Light(r*i/lights_n,(int) (r/(lights_n+4)));
  }
  
  void move(float speed) {
    cx+= speed;
    cx=width/2; //HACK
    if (cx>width) cx=0;
    angle+= speed/r;
    for(int i=0; i<lights.length; i++)
      lights[i].change();
  }
  
  void display() {
    stroke(0.5);
    noFill();
    ellipse(cx,cy,2*r,2*r);
    
    canvas.beginDraw();
    canvas.background(0);
    for(int i=0; i<lights.length; i++)
      lights[i].display(cx+r*cos(angle)*(i+4)/(lights.length+4),
                        cy+r*sin(angle)*(i+4)/(lights.length+4));
    canvas.endDraw();
  }
  
  
}
