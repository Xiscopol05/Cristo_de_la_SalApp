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
  fill(0);
  textFont(getFontAt(7));
  text("Inicio de sesión", 328, 177);
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
  textAlign(LEFT);
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
  image(getIconUser(), 830,(bannerHeight/2)-25, 50,50);
  textFont(getFontAt(5));
  text(userNameAdmin, 890,(bannerHeight/2)+7);
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



void avisos() {
  pushStyle();
  pushMatrix();
  fill(getColorAt(3));
  rect(menuWidth+20, primerIconY+iconHeight, ((1280-menuWidth)/2)-10, iconHeight*3);
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
  text("Correo electrónico:", 413, 311+12);
  text("Nombre del banco:", 40, 420+12);
  text("Titular de la cuenta:", 40, 480+12);
  text("Fecha de alta:", 630, 625+12);


  popMatrix();
  popStyle();
}

void nuevoHermano() {
  pushStyle();
  pushMatrix();

  translate(menuWidth, bannerHeight);

  strokeWeight(3);
  line(50, 375, 1035, 375);
  image(getImgAt(8), 33, 75, 118, 135);
  textFont(getFontAt(6));
  text("Fecha de nacimiento:", 167, 177+12);
  text("Domicilio:", 40, 250+12);
  text("Teléfono:", 40, 311+12);
  text("Correo electrónico:", 413, 311+12);
  text("Nombre del banco:", 40, 420+12);
  text("Titular de la cuenta:", 40, 480+12);
  text("Fecha de alta:", 630, 625+12);
  titDetallePersonal.display();

  popMatrix();
  popStyle();
}

void tituloCarruselFotos() {
  pushStyle();
  pushMatrix();

  translate(menuWidth, bannerHeight);

  fill(getColorAt(3));
  rect(30, 35, 495, 35);
  textFont(getFontAt(7));
  fill(0);
  textAlign(LEFT);
  text("Bienvenido " + userNameAdmin + " a tu perfil de la hermandad", 40, 57);
  
  popStyle();
  popMatrix();
}

void cuadroEnlacesRRSS() {
  pushMatrix();
  pushStyle();
  translate(menuWidth, bannerHeight);
  strokeJoin(ROUND);
  strokeWeight(2);
  fill(255);
  rect(70, 140, 445, 410);
  fill(getColorAt(3));
  rect(70, 140, 445, 35);
  fill(0);
  textFont(getFontAt(7));
  text("Redes Sociales", 80, 165);
  popStyle();
  popMatrix();
}

void cuadroEnlacesVarios() {
  pushMatrix();
  pushStyle();
  translate(menuWidth, bannerHeight);
  strokeJoin(ROUND);
  strokeWeight(2);
  fill(255);
  rect(580, 140, 445, 410);
  fill(getColorAt(3));
  rect(580, 140, 445, 35);
  fill(0);
  textFont(getFontAt(7));
  text("Otros enlaces de interés", 590, 165);
  popStyle();
  popMatrix();
}
