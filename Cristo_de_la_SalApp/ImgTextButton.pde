

class ImgTextButton {

  // Propietats d'un botó:
  float x, y, w, h;  // Posició i dimensions

  PImage img;

  // Colores de contorno, fill, activo i desactivado
  color fillColor, strokeColor;
  color fillColorOver;

  boolean enabled;   // Abilitat / desabilitat

  String textBoton;

  // Mètode Constructor
  ImgTextButton(PImage imgs, String textBoton, float x, float y, float w, float h) {
    this.img = imgs;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.textBoton = textBoton;
    this.enabled = true;
    fillColor = color(getColorAt(1));
    fillColorOver = color(getColorAt(0));
    strokeColor = color(0);
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }

  // Dibuixa el botó
  void display() {

    pushStyle();
    if (mouseOverButton()) {
      fill(fillColorOver);      // Color cuando el mouse está encima
    } else {
      fill(fillColor);          // Color activo sin mouse
    }
    stroke(strokeColor);
    strokeWeight(1);        //Color i grosor del contorno
    rect(this.x, this.y, this.w, this.h, 10);    // Rectangulo del botón

    // Texto (color, alineación i tamaño)
    fill(255);
    textAlign(CENTER);
    textFont(getFontAt(4));
    text(textBoton, this.x + this.w/2, this.y + this.h/2+30);
    imageMode(CENTER);
    image(img, this.x + this.w/2, this.y + this.h/2-20, this.w/3, this.h/3+10);
    popStyle();
  }

  // Indica si el cursor està sobre el botó
  // Indica si el cursor està sobre el botó
  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.h);
  }
}
