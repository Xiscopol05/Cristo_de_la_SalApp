void setup() {
  fullScreen();
  background(255);
  textAlign(CENTER);
  textSize(14);
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

  if (mousePressed) {
    icons();
  }
}
