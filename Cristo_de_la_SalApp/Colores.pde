//Archivo con la información de los colores de la App.

// Array de colores
color[] colors;

// Establece los colores de la App
void setColors() {
  this.colors = new color[6];
  this.colors[0] = color(#401E3A);
  this.colors[1] = color(#610A0A);
  this.colors[2] = color(#960D0F);
  this.colors[3] = color(#D4AA7D);
  this.colors[4] = color(#F2E0C9);
  this.colors[5] = color(255);
}

// Getter del número de colores
int getNumColors() {
  return this.colors.length;
}

// Getter del color primario
color getFirstColor() {
  return  this.colors[0];
}

// Getter del color secundario
color getSecondColor() {
  return  this.colors[1];
}

// Getter del color terciario
color getThirdColor() {
  return  this.colors[2];
}

// Getter del color i-éssimo
color getColorAt(int i) {
  return this.colors[i];
}
