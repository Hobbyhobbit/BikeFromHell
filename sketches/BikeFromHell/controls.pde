
void colorSlider(String name,color c,int x,int y,int w,int h) {
  cp5.addSlider(name,0,ledMax,ledMax,x,y,w,h);
  Slider s = (Slider)cp5.controller(name);
  s.setNumberOfTickMarks(ledMax);
  s.showTickMarks(false);
  s.setLabelVisible(false);
  s.setColorActive    (lerpColor(#000000,c,0.9f));
  s.setColorForeground(lerpColor(#000000,c,0.6f));
  s.setColorBackground(lerpColor(#000000,c,0.2f));
}

