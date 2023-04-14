
class Select {

  float x, y, w, h;          // Posición y dimensiones
  String[] texts;            // Valores posibles
  String[] filteredTexts;            // Valores posibles
  String selectedValue;      // Valor seleccionado

  boolean collapsed = true;  // Plegado / Desplegado
  boolean enabled;           // Habilitado / Deshabilitado

  float lineSpace = 5;      // Espacio entre líneas

  Select(String[] texts, float x, float y, float w, float h) {

    this.texts = texts;
    this.filteredTexts = texts;

    this.selectedValue = "";
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    this.collapsed = true;
  }

  void display() {
    pushStyle();
    stroke(0);
    strokeWeight(2);
    fill(255);
    rect(x, y, w, h);

    fill(getColorAt(1));
    rect(x + w - 30, y, 30, h);

    fill(255);
    stroke(0);
    triangle(x + w - 25, y+5, x + w - 15, y + 25, x + w - 5, y+5);

    fill(0);
    textSize(14);
    textFont(getFontAt(7));
    text(selectedValue, x + 10, y + 25);

    if (!this.collapsed) {

      fill(255);
      stroke(0);
      rect(x, y+h, w, (h + lineSpace)*texts.length);

      for (int i=0; i<texts.length; i++) {

        if (i== clickedOption()) {
          fill(200);
          noStroke();
          rect(x+4, y+4 + h + (h + lineSpace)*i - 2, w -8, h + lineSpace - 8);
        }

        fill(0);
        textFont(getFontAt(7));
        text(texts[i], x + 10, y + h + 25 + (h + lineSpace)*i);
      }
    }
    popStyle();
  }

  void setCollapsed(boolean b) {
    this.collapsed = b;
  }

  void toggle() {
    this.collapsed = !this.collapsed;
  }


  void update() {
    int option = clickedOption();
    selectedValue = texts[option];
  }

  // Indica si el cursor está sobre el select
  boolean mouseOverSelect() {
    if (this.collapsed) {
      return (mouseX >= x) &&
        (mouseX <= x + w) &&
        (mouseY >= y) &&
        (mouseY <= y + h);
    } else {
      return (mouseX>= x) &&
        (mouseX<= x + w) &&
        (mouseY>= y) &&
        (mouseY<= y + h + (h + lineSpace)*texts.length);
    }
  }

  int clickedOption() {
    int i = (int)map(mouseY, y + h, y + h + (h + lineSpace)*texts.length,
      0, texts.length);
    return i;
  }
}
