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
  strokeWeight(1);
  line(menuWidth, 1280, menuWidth, bannerHeight);
  strokeWeight(0);
  fill(getColorAt(1));
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  text("MENU", menuWidth/2, menuHeight/2);
  logo();
  displayButtonsMenu();
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
  rect(20, 20, 520, 310);
  popMatrix();
  popStyle();
}

void fila2() {
  pushMatrix();
  pushStyle();
  translate(menuWidth+520, bannerHeight+350);
  fill(getColorAt(3));
  rect(20, 0, 520, 330);
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

void menu() {
  menuBar();
  banner();
  bPrincipal.display();
}

void buscador() {
  pushStyle();
  fill(getColorAt(3));
  rect(710, primerIconY-(iconHeight/2)-5, 300, 25);
  fill(0);
  textFont(getFontAt(2));
  text("Buscador", 730, primerIconY-(iconHeight/2)+13.5 );
  popStyle();
}

void tablaGrande() {
  pushMatrix();
  pushStyle();
  translate(menuWidth, bannerHeight);
  fill(getColorAt(3));
  t.display(20, 304-bannerHeight, 1280-menuWidth-40, 410);
  buscador();
  paginador();
  popMatrix();
  popStyle();
}

void avisos() {
  pushStyle();
  pushMatrix();
  fill(getColorAt(3));
  rect(menuWidth+20, primerIconY+iconHeight, ((1280-menuWidth)/2)-10, iconHeight*3);
  popStyle();
  popMatrix();
}

void calendario() {
  pushStyle();
  pushMatrix();
  fill(getColorAt(3));
  rect(menuWidth+20+((1280-menuWidth)/2), primerIconY+iconHeight+20, ((1280-menuWidth)/2)-35, (iconHeight*3)-50);
  popStyle();
  popMatrix();
}
