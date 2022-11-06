// Dibujo de las zonas de la pantalla

void inicioDeSesion() {
  pushMatrix();
  pushStyle();
  translate((1280/2)-(marcoWidth/2), (800/2)-(marcoHeight/2));
  fill(getColorAt(4));
  rect(0, 0, marcoWidth, marcoHeight);
  fill(getColorAt(3));
  rect(0, 0, marcoWidth, 30);
  displayImg(8, (marcoWidth/2)-25, 60, 50, 50);
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
  stroke(0);
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
  rect(0, 0, bannerWidth, bannerHeight);
  fill(0);
  text("banner", menuWidth+bannerWidth/2, bannerHeight/2);
  fill(255);
  textFont(getFontAt(3));
  text("Hermandad del Stmo. Cristo de la Sala", 20, 70);
  popStyle();
  popMatrix();
}
