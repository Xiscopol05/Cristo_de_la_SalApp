// Funciones de dibujo de las pantallas

void dibujaPantallaInicio() {
  image(getFondoManton(), 0, 0, 1280, 800 );
  inicioDeSesion();
  bPrincipal.display();
}

void dibujaPantallaPrincipal() {
  background(255);
  menuBar();
  banner();
  bPrincipal.setEnabled(false);
  
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
