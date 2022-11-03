void setup() {
  fullScreen();
  setColors();
  setFonts();
  setMedias();
}

void draw() {
  background(getColorAt(4));
  //println("X= "+mouseX+"; Y= "+mouseY);
  menuBar();
  banner();
  logo();
}
