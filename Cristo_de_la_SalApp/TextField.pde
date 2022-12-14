// Component Camp de Text

class TextField {

  // Propietats del camp de text
  int x, y, h, w;

  // Colors
  color bgColor = color(getColorAt(5));
  color fgColor = color(0, 0, 0);
  color selectedColor = color(getColorAt(4));
  color borderColor = color(30, 30, 30);
  int borderWeight = 1;

  // Text del camp
  String text = "";
  String textDefault = "";
  int textLength = 0;
  int textSize = 24;

  boolean selected = false;

  // Constructor
  TextField(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  TextField(String t, int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text=t;
    this.textDefault = t;
  }

  // Dibuixa el Camp de Text
  void display() {

    if (selected) {
      fill(selectedColor);
    } else {
      fill(bgColor);
    }

    strokeWeight(borderWeight);
    stroke(borderColor);
    rect(x, y, w, h, 5);

    fill(fgColor);
    textSize(textSize);
    text(text, x + 5, y + textSize);
  }

  // Afegeix, lleva el text que es tecleja
  void keyPressed(char key, int keyCode) {
    if (selected) {
      if (keyCode == (int)BACKSPACE) {
        removeText();
      } else if (keyCode == 32) {
        addText(' '); // SPACE
      } else {

        boolean isKeyCapitalLetter = (key >= 'A' && key <= 'Z');
        boolean isKeySmallLetter = (key >= 'a' && key <= 'z');
        boolean isKeyNumber = (key >= '0' && key <= '9') || (key=='.');
        boolean isSpecialKey = (keyCode==50);
        boolean isKeyAcento = (keyCode==65 || keyCode==69 || keyCode==73 || keyCode==79 ||
          keyCode==85);
        if (isKeyCapitalLetter || isKeySmallLetter || isKeyNumber || isSpecialKey || isKeyAcento) {
          addText(key);
        }
      }
    }
  }

  // Afegeix la lletra c al final del text
  void addText(char c) {
    if (textWidth(this.text + c) < w) {
      this.text += c;
      textLength++;
    }
  }

  // Lleva la darrera lletra del text
  void removeText() {
    if (textLength - 1 >= 0) {
      text = text.substring(0, textLength - 1);
      textLength--;
    }
  }

  // Indica si el ratol?? est?? sobre el camp de text
  boolean mouseOverTextField() {
    if (mouseX >= this.x && mouseX <= this.x + this.w) {
      if (mouseY >= this.y && mouseY <= this.y + this.h) {
        return true;
      }
    }
    return false;
  }

  // Selecciona el camp de text si pitjam a sobre
  // Deselecciona el camp de text si pitjam a fora
  void isPressed() {
    if (mouseOverTextField()) {
      selected = true;
      if (this.text==this.textDefault) {
        this.text="";
      }
    } else {
      selected = false;
      if (this.text=="") {
        this.text=this.textDefault;
      }
    }
  }
}
