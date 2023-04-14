class Option {

  // Propiedades de un option:
  float x, y, w, h;  // Posición i dimensiones
  // Colores de contorno, relleno, activo i desactivado
  color fillColor, strokeColor;
  color fillColorOver, fillColorDisabled;
  String textBoto;  // Texto
  boolean enabled;  //Habilitado y deshabilitado

  // Método Constructor
  Option(String text, float x, float y, float w, float h) {
    this.textBoto = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    fillColor = color(255);
    fillColorOver = color(getColorAt(3));
    fillColorDisabled = color(150);
    strokeColor = color(0);
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }

  // Dibuja el botón
  void display() {
    pushStyle();
    if (!enabled) {
      fill(fillColorDisabled);  // Color deshabilitado
    } else if (mouseOverButton()) {
      fill(fillColorOver);      // Color cuando el ratón está encima
    } else {
      fill(fillColor);          // Color activo pero el ratón está fuera
    }
    noStroke();

    // Dibujar borde alrededor de la opción
    stroke(strokeColor);
    strokeWeight(2);
    rect(x, y, w, h, 5);

    // Texto (color, alineación y tamaño)
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(20);
    String truncatedText = textBoto;
    while (textWidth(truncatedText) > w - 10) {
      truncatedText = truncatedText.substring(0, truncatedText.length() - 1);
    }
    text(truncatedText, x + w/2, y + h/2);

    popStyle();
  }


  // Indica si el cursor está sobre el option
  boolean mouseOverButton() {
    return (mouseX >= this.x) &&
      (mouseX<=this.x + this.w) &&
      (mouseY>= this.y) &&
      (mouseY<= this.y + this.h);
  }
}
