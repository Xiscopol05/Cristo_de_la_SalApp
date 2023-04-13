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
    pushStyle();
    pushMatrix();
    stroke(0);
    strokeWeight(2);
    fill(getColorAt(c));
    rect(x, y, w, h);
    textFont(getFontAt(5));
    fill(0);
    text(this.text, x + 5, y + 10, w, h);
    popStyle();
    popMatrix();
  }
}
