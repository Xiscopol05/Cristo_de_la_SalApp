class Titulo {

  float x, y, w, h;
  String text;
  

  Titulo(String t, float x, float y, float w, float h) {

    this.text = t;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }


  void display() {
    pushStyle();
    pushMatrix();
    stroke(0);
    strokeWeight(2);
    fill(getColorAt(3));
    rect(x, y, w, h);
    textFont(getFontAt(5));
    fill(0);
    text(this.text, x + 5, y + 25);
    popStyle();
    popMatrix();
  }
}
