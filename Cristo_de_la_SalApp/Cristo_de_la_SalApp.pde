void setup(){
  fullScreen();
  background(255);
  textAlign(CENTER);
  setColors();
  setFonts();
  setMedias();
}

void draw(){
  background(getColorAt(0));
  //println("X= "+mouseX+"; Y= "+mouseY);
  menuBar();
  banner();
  logo();
}
