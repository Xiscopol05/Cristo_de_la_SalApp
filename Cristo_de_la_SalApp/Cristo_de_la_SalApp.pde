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

  if (mouseX<menuWidth && (mouseY > primerIconY && mouseY<segundoIconY)) {
    icon(primerIconY);
  } 
  else if (mouseX<menuWidth && (mouseY > segundoIconY && mouseY<tercerIconY)) {
    icon(segundoIconY);
  }else if (mouseX<menuWidth && (mouseY > tercerIconY && mouseY<cuartoIconY)) {
    icon(tercerIconY);
  }else if (mouseX<menuWidth && (mouseY > cuartoIconY && mouseY<quintoIconY)) {
    icon(cuartoIconY);
  }else if (mouseX<menuWidth && mouseY > quintoIconY) {
    icon(quintoIconY);
  }
}
