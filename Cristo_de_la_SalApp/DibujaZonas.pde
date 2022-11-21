// Dibujo de las zonas de la pantalla

void inicioSesion() {
  pushMatrix();
  pushStyle();
  translate(inicioSesionX, inicioSesionY);

  fill(getColorAt(4));
  rect(0, 0, marcoWidth, marcoHeight);

  fill(getColorAt(3));
  rect(0, 0, marcoWidth, 30);

  displayImg(8, (marcoWidth/2)-37.5, 60, 75, 75);

  popMatrix();
  usuarioInicioSesion();
  popStyle();
}

void usuarioInicioSesion() {
  pushMatrix();
  pushStyle();
  translate(inicioSesionX, inicioSesionY);

  fill(getColorAt(3));
  rect((marcoWidth/2)-(marcoCuentaWidth/2), (marcoHeight/2)-(marcoCuentaHeight/2)+50, marcoCuentaWidth, marcoCuentaHeight);

  fill(0);
  textAlign(LEFT);
  textSize(24);
  text("Username: ", (marcoWidth/2)-(marcoCuentaWidth/2)+20, (marcoHeight/2)-(marcoCuentaHeight/2)+110);
  text("Password: ", (marcoWidth/2)-(marcoCuentaWidth/2)+20, (marcoHeight/2)-(marcoCuentaHeight/2)+210);

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

void menu() {
  menuBar();
  banner();
  bPrincipal.display();
}

void tablaGrande() {
  pushMatrix();
  pushStyle();
  translate(menuWidth, bannerHeight);
  fill(getColorAt(3));
  t.display(20, 304-bannerHeight, 1280-menuWidth-40, 410);
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

void detalleHermano() {
  pushStyle();
  pushMatrix();

  translate(menuWidth, bannerHeight);

  displayDetalleHermano();
  strokeWeight(3);
  line(50, 375, 1035, 375);
  image(getImgAt(8), 33, 75, 118, 135);
  textFont(getFontAt(6));
  text("Fecha de nacimiento:", 167, 177+12);
  text("Domicilio:", 40, 250+12);
  text("Teléfono:", 40, 311+12);
  text("Correo electrónico:", 420, 311+12);
  text("Nombre del banco:", 40, 420+12);
  text("Titular de la cuenta:", 40, 480+12);
  text("Fecha de alta:", 630, 625+12);


  popMatrix();
  popStyle();
}
