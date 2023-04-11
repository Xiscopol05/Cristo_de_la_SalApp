class DayButton {

  // Dimensions del botó
  float x, y, w, h;

  // Data representativa
  int dia, mes, año;

  // Estats del botó
  boolean selected, selected2, enabled;

  String info;

  // Constructor
  DayButton(float x, float y, float w, float h, int d, int m, int a) {
    this.x = x;
    this.y=y;
    this.w = w;
    this.h = h;
    this.dia = d;
    this.mes = m;
    this.año = a;
    this.selected = false;
    this.selected2 = false;
    this.enabled = true;
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }

  void setSelected(boolean b) {
    this.selected = b;
  }

  void setSelected2(boolean b) {
    this.selected2 = b;
  }

  void setInfo(String info) {
    this.info = info;
  }


  // Dibuixa el botó
  void display() {
pushMatrix();
    pushStyle();
    if (enabled) {
      fill(255);
    } else {
      fill(100);
    }
    stroke(0);
    strokeWeight(1);
    rect(x, y, w, h, 5);
    if (selected) {
      fill(getColorAt(2));
      noStroke();
      ellipse(x + w/2, y+h/2, 50,50);
    }
    if (selected2) {
      fill(getColorAt(3));
      noStroke();
      ellipse(x + w/2, y+h/2, 50,50);
      fill(200);
      textSize(10);
      textAlign(CENTER);
    }
    fill(0);
    textSize(24);
    textAlign(CENTER);
    text(dia, x + w/2, y + h/2 + 10);

popMatrix();
    popStyle();
  }

  // Ratolí sobre el botó
  boolean mouseOver() {
    return mouseX>=this.x && mouseX<=this.x+this.w &&
      mouseY>=this.y && mouseY<=this.y+this.h;
  }
}
