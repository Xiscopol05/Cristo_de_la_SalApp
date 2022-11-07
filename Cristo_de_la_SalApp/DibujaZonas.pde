// Dibujo de las zonas de la pantalla

void inicioDeSesion() {
  pushMatrix();
  pushStyle();
  translate((1280/2)-(marcoWidth/2), (800/2)-(marcoHeight/2));
  fill(getColorAt(4));
  rect(0, 0, marcoWidth, marcoHeight);
  fill(getColorAt(3));
  rect(0, 0, marcoWidth, 30);
  displayImg(8, (marcoWidth/2)-37.5, 60, 75, 75);
  popStyle();
  popMatrix();
}

void logo() {
  pushStyle();
  fill(getColorAt(3));
  rect(30, 20, logoWidth, logoHeight);
  image(getImgAt(0), 30, 20, logoWidth, logoHeight);
  popStyle();
}

void menuBar() {
  pushStyle();
  fill(getColorAt(1));
  strokeWeight(1);
  line(menuWidth, 1280, menuWidth, bannerHeight);
  strokeWeight(0);
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  text("MENU", menuWidth/2, menuHeight/2);
  logo();
  bCenso.display();
  bContabilidad.display();
  bArchivo.display();
  bAvisos.display();
  bEnlaces.display();
  popStyle();
}

void banner() {
  pushStyle();
  pushMatrix();
  translate(menuWidth, 0);
  fill(getColorAt(1));
  stroke(0);
  strokeWeight(1);
  line(0, bannerHeight, 1280, bannerHeight);
  strokeWeight(0);
  rect(0, 0, bannerWidth, bannerHeight);
  fill(255);
  textFont(getFontAt(3));
  text("Hermandad del Stmo. Cristo de la Sala", 20, 70);
  popStyle();
  popMatrix();
}

void columnaEntera() {
  pushMatrix();
  pushStyle();
  translate(menuWidth, bannerHeight);
  fill(getColorAt(3));
  rect(20, 20, 1040, 660);
  popMatrix();
  popStyle();
}

void columna1() {
  pushMatrix();
  pushStyle();
  translate(menuWidth, bannerHeight);
  fill(getColorAt(3));
  rect(20, 20, 500, 660);
  popMatrix();
  popStyle();
}

void columna2() {
  pushMatrix();
  pushStyle();
  translate(menuWidth+520, bannerHeight);
  fill(getColorAt(3));
  rect(20, 20, 500, 660);
  popMatrix();
  popStyle();
}

void columna1y2() {
  columna1();
  columna2();
}

void fila1() {
  pushMatrix();
  pushStyle();
  translate(menuWidth+520, bannerHeight);
  fill(getColorAt(3));
  rect(20, 20, 500, 310);
  popMatrix();
  popStyle();
}

void fila2() {
  pushMatrix();
  pushStyle();
  translate(menuWidth+520, bannerHeight+350);
  fill(getColorAt(3));
  rect(20, 20, 500, 310);
  popMatrix();
  popStyle();
}

void tablaGrande() {
  pushMatrix();
  pushStyle();
  translate(menuWidth, bannerHeight);
  fill(getColorAt(3));
  rect(20, 304-bannerHeight, 1280-menuWidth-40, 410);
  popMatrix();
  popStyle();
}

void paginador() {
  pushMatrix();
  pushStyle();
  fill(getColorAt(3));
  rect(1280-20-385, 800-70, 385, 50);
  popMatrix();
  popStyle();
}
