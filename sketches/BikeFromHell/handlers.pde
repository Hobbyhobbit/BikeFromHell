
void keyTyped() {

  //TODO handle these via GUI
  if (mode == IMAGING && (key == RETURN || key == ENTER)) {
    imageWheel.applyData();
    mode= RUNNING;
    background(0);
  }
  if (mode == IMAGING && key == BACKSPACE) {
    mode= RUNNING;
    background(0);
  }
  if (mode == IMAGING && key == 'r')
    imageWheel.resetImage();
  if (mode == RUNNING && key == 'd')
    matrix.dumpData();
}

void mousePressed() {
  if (mode == IMAGING) imageWheel.mousePressed();
}

void mouseDragged() {
  if (mode == IMAGING) imageWheel.mouseDragged();
}

void controlEvent(ControlEvent event) {
  if (event.isGroup()) {
    String fname = "patterns/" + dataFiles[(int) (event.group().value())];
    // try loading matrix
    if (fname.toLowerCase().substring(fname.length()-7).equals(".matrix")) {
      try {
        matrix.loadData(fname);
      } catch(Exception e) {
        println("*** COULD NOT LOAD " + fname + " : " + e);
      }
      mode= RUNNING;
      return;
    }
    
    // try loading image
    PImage img= loadImage(fname);
    if (img != null) {
      mode= IMAGING;
      imageWheel.setImage(img);
      return;
    }
  }
}

