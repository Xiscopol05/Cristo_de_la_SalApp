class TextInfo {

  float x, y, w, h;
  String text;
  int c = 5;

  TextInfo(String t, float x, float y, float w, float h) {
    this.text = t;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void setColor(int c) {
    this.c = c;
  }

  void display() {
    if (text != null) {
      pushStyle();
      pushMatrix();
      stroke(0);
      strokeWeight(2);
      fill(getColorAt(c));
      rect(x, y, w, h, 5);
      textFont(getFontAt(5));
      fill(0);
      float textWidth = textWidth(this.text);
      if (textWidth > w - 10) { // 10 pixels de margen
        int endIndex = this.text.length() - 1;
        while (textWidth > w - 20 && endIndex > 0) { // 20 pixels de margen + puntos suspensivos
          endIndex--;
          textWidth = textWidth(this.text.substring(0, endIndex) + "...");
        }
        text(this.text.substring(0, endIndex) + "...", x + 5, y + h - textAscent() - 10, w - 10, h);
      } else {
        text(this.text, x + 5, y + h - textAscent() - 10, w - 10, h);
      }
      popStyle();
      popMatrix();
    } else {
      pushStyle();
      pushMatrix();
      stroke(0);
      strokeWeight(2);
      fill(getColorAt(c));
      rect(x, y, w, h, 5);
      popStyle();
      popMatrix();
    }
  }
}
