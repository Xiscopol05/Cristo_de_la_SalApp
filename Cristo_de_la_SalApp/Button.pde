// Clase Botón

class Button {

  // propiedades de los botones
  float x, y, w, h;  // posición y dimensión

  // Colores de contorno, fill, activo i desactivado
  color fillColor, strokeColor;
  color fillColorOver, fillColorDisabled;

  String textBoton;  // Texto
  boolean enabled;  // Habilitado / deshabilitado

  //Constructor
  Button(String text, float x, float y, float w, float h) {
    this.textBoton = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    fillColor = color(155, 55, 155);
    fillColorOver = color(255, 55, 155);
    fillColorDisabled = color(150);
    strokeColor = color(0);
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }

  // Dibujar el botón
  void display() {
    pushStyle();
    if (!enabled) {
      fill(fillColorDisabled);  // Color deshabilitado
    } else if (mouseOverButton()) {
      fill(fillColorOver);      // Color cuando el mouse está encima
    } else {
      fill(fillColor);          // Color activo sin mouse
    }
    stroke(strokeColor);
    strokeWeight(2);        //Color i grosor del contorno
    rect(this.x, this.y, this.w, this.h, 10);    // Rectangulo del botón

    // Texto (color, alineación i tamaño)
    fill(0);
    textAlign(CENTER);
    textSize(20);
    text(textBoton, this.x + this.w/2, this.y + this.h/2 + 10);
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
