
import controlP5.*;

int things= 1;
int leds= 10;
int resolution= 50; // slots per turn
float kmh= 10f; // bicycle speed
float smear=.5f; // how long lights are visible
float wheelR=.4f; // wheel radius

final static int RUNNING= 0;
final static int IMAGING= 1;
int mode= RUNNING;
SpinningWheel spinningWheel;
ImageWheel    imageWheel;

float pos1= 0f, pos2= 0f; // grow continuously; +1/turn
float dpos= 0f; // adapted depending on actual fps
float delta= 0f;
int fps= 30; // will be adjusted to actual value
int mstart,lastframe,frames;
ControlP5 cp5;
LedMatrix matrix;
int ledMax=4; // resolution of every LED; e.g. 4 means 2 bits
int ledRed,ledGreen,ledBlue; // active color in matrix

// create new .matrix files : press "d" and copy'n'paste into data/ directory
String[] dataFiles= new String[] {
  "_empty.matrix",
  "atom.matrix",
  "flower.jpg",
  "flower2.jpg",
  "tape_controls.jpg",
};

void setup() {
  size(800,400);
  cp5= new ControlP5(this);
  // general parameters
  cp5.addSlider("kmh"  ,0f,30f, 20,100,10,100);
  cp5.addSlider("smear",0f, 1f,  70,100,10,100);
  cp5.addSlider("delta",0f,.2f, 120,100,10,100);
  
  // file controls
  /* won't work in applet 
  File dataDir= new File(dataPath(""));
  dataFiles= dataDir.listFiles(); //TODO sort
  */
  ListBox fileList= cp5.addListBox("fileList", 680,100,100,200);
  for(int i=0; i<dataFiles.length; i++)
    fileList.addItem( dataFiles[i],i );
    //fileList.addItem( dataFiles[i].getName(),i );
    
  // color pickers
  colorSlider("ledRed"  ,#FF0000,  0,290,60,10);
  colorSlider("ledGreen",#00FF00, 80,290,60,10);
  colorSlider("ledBlue" ,#0000FF,160,290,60,10);
  
  // led matrix
  matrix= new LedMatrix("ledCode",ledMax,resolution,leds,0,300,800,100);
  
  // wheel controls
  spinningWheel= new SpinningWheel( width/2,150,100,20,matrix );
  imageWheel   = new ImageWheel   ( width/2,150,100,20,matrix );

  frameRate(fps);
  mstart= millis();
  lastframe= frames= 0;
  
  background(0);
}


void draw() {
  // clear background of controls
  fill(0);
  rect(0  ,0,150,300);
  rect(650,0,150,300);
  
  if (mode == IMAGING) {
    background(0); // messy image scaling ;)
    imageWheel.draw();
    matrix.setInteract(false);
  }

  if (mode == RUNNING) {
    // calculate position
    pos1+= dpos;
    pos2+= dpos*(1+delta);
  
    spinningWheel.setPos(pos1);
    spinningWheel.setDelta(pos2-pos1);
    spinningWheel.draw();

    matrix.setPos(pos1);
    matrix.setInteract(true);
  }
  
  // draw matrix in both cases
  matrix.draw();
  
  // calculate frame count and do speed->pos conversion
  if (millis()-mstart>1000) {
    mstart= millis();
    fps= frames-lastframe;
    lastframe= frames;
//    print("fps="+fps+"\n"); //DBG
    dpos= 1f/fps * kmh/3.6/(2*PI*wheelR);
  }
  
  frames++;
}

