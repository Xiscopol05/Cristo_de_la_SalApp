// Funciones de dibujo de las pantallas

void dibujaPantallaInicio() {
  //imagen de fondo
  image(getFondoManton(), 0, 0, 1280, 800 );

  //habilitar y deshabilitar los botones
  bInicioSesion.setEnabled(true);
  enableButtonsMenu(false);
  enableButtonsTabla(false);


  //dibujar elementos de la pantalla
  inicioDeSesion();

  //display botones
  bInicioSesion.display();
  displayInicioSesion();
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
  tfBuscar.display();
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
  tfBuscar.display();
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
