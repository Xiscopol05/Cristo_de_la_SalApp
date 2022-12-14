// Clase Botón

public class Button {

  // propiedades de los botones
  float x, y, w, h;  // posición y dimensión

  // Colores de contorno, fill, activo i desactivado
  color fillColor, strokeColor;
  color fillColorOver;

  String textBoton;  // Texto
  boolean enabled;  // Habilitado / deshabilitado

  int tf=4; // text font

  //Constructor
  Button(String text, float x, float y, float w, float h) {
    this.textBoton = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    fillColor = color(getColorAt(1));
    fillColorOver = color(getColorAt(0));
    strokeColor = color(0);
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }

  void setTextFont(int i) {
    this.tf= i;
  }

  // Dibujar el botón
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
    textFont(getFontAt(tf));
    text(textBoton, this.x + this.w/2, this.y + this.h/2+5);
    popStyle();
  }

  // Indica si el cursor está sobre el botón
  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.h);
  }
}
