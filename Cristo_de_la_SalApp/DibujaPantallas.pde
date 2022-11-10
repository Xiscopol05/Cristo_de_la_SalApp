// Funciones de dibujo de las pantallas

void dibujaPantallaInicio() {
  image(getFondoManton(), 0, 0, 1280, 800 );
  inicioDeSesion();
  bInicioSesion.display();
  bInicioSesion.setEnabled(true);
  enableButtons(false);
}

void dibujaPantallaPrincipal() {
  background(255);
  menu();
  bInicioSesion.setEnabled(false);
  enableButtons(true);
  columna1();
  fila1();
  fila2();
  enableButtonsTabla(false);
}

void dibujaPantallaCenso() {
  background(255);
  menu();
  tablaGrande();
  enableButtonsTabla(true);
  displayButtonsTabla();
  t.display(220, 305, 1280-menuWidth-40, 410);
}

void dibujaPantallaContabilidad() {
  background(255);
  menu();
  columnaEntera();
  enableButtonsTabla(false);
}

void dibujaPantallaArchivo() {
  background(255);
  menu();
  background(255);
  menu();
  tablaGrande();
  enableButtonsTabla(true);
  displayButtonsTabla();
  t.display(220, 305, 1280-menuWidth-40, 410);
  s1.display();
}

void dibujaPantallaAvisos() {
  background(255);
  menu();
  enableButtonsTabla(false);
  avisos();
  calendario();
}

void dibujaPantallaEnlaces() {
  background(255);
  menu();
  enableButtonsTabla(false);
  columna1();
  columna2();
}
