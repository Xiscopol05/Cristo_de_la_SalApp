// Funciones de dibujo de las pantallas

void dibujaPantallaInicio() {
  image(getFondoManton(), 0, 0, 1280, 800 );
  inicioDeSesion();
  bInicioSesion.display();
  bInicioSesion.setEnabled(true);
  enableButtonsMenu(false);
}

void dibujaPantallaPrincipal() {
  background(255);

  //habilitar y deshabilitar los botones
  bInicioSesion.setEnabled(false);
  enableButtonsMenu(true);
  enableButtonsTabla(false);

  //dibujar los elementos de la pantalla
  menu();
  columna1();
  fila1();
  fila2();
}

void dibujaPantallaCenso() {
  background(255);

  //habilitar y deshabilitar los botones. Dibujar los botones específicos de la pantalla
  bInicioSesion.setEnabled(false);
  enableButtonsMenu(true);
  enableButtonsTabla(true);
  displayButtonsTabla();

  //dibujar los elementos de la pantalla
  menu();
  tablaGrande();
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
