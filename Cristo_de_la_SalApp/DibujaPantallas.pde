// Funciones de dibujo de las pantallas

void dibujaPantallaInicio() {
  image(getFondoManton(), 0, 0, 1280, 800 );
  inicioDeSesion();
  bPrincipal.display();
  enableButtons(false);
}

void dibujaPantallaPrincipal() {
  background(255);
  menuBar();
  banner();
  bPrincipal.setEnabled(false);
  enableButtons(true);
  columna1();
  fila1();
  fila2();
}

void dibujaPantallaCenso() {
  background(255);
  menuBar();
  banner();
}

void dibujaPantallaContabilidad() {
  background(255);
  menuBar();
  banner();
  columnaEntera();
}

void dibujaPantallaArchivo() {
  background(255);
  menuBar();
  banner();
}

void dibujaPantallaAvisos() {
  background(255);
  menuBar();
  banner();
}

void dibujaPantallaEnlaces() {
  background(255);
  menuBar();
  banner();
}
