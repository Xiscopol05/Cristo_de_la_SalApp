// Dibujo de las zonas de la pantalla

void inicioDeSesion() {
  pushMatrix();
  pushStyle();
  translate(320, 155);
  fill(getColorAt(4));
  rect(0, 0, marcoWidth, marcoHeight);
  fill(getColorAt(3));
  rect(0,0, marcoWidth, 30);
  popStyle();
  popMatrix();
}
