// Funciones de dibujo de las pantallas

void dibujaPantallaInicio() {
  //imagen de fondo
  image(getFondoManton(), 0, 0, 1280, 800 );

  //habilitar y deshabilitar botones
  bInicioSesion.setEnabled(comprovaLogin());
  enableButtonsMenu(false);
  enableButtonsTabla(false);
  bAceptar.setEnabled(false);
  bFicha.setEnabled(false);

  //dibujar elementos de la pantalla
  inicioSesion();
  //display elementos GUI
  bInicioSesion.display();
  displayInicioSesiontf();
}

void dibujaPantallaPrincipal() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  bInicioSesion.setEnabled(false);
  enableButtonsMenu(true);
  enableButtonsTabla(false);
  bAceptar.setEnabled(false);
  bFicha.setEnabled(false);

  //dibujar elementos de la pantalla
  menu();
  columna1();
  fila1();
  fila2();

  //display elementos GUI
  displayButtonsMenu();
}

void dibujaPantallaCenso() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  bInicioSesion.setEnabled(false);
  enableButtonsMenu(true);
  enableButtonsTabla(true);
  bAceptar.setEnabled(false);
  bFicha.setEnabled(false);

  //dibujar elementos de la pantalla
  menu();
  tablaGrande();

  //display elementos GUI
  displayButtonsMenu();
  displayButtonsTabla();
  buscar.display();
}

void dibujaPantallaContabilidad() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  bInicioSesion.setEnabled(false);
  enableButtonsMenu(true);
  enableButtonsTabla(false);
  bAceptar.setEnabled(false);
  bFicha.setEnabled(false);

  //dibujar elementos de la pantalla
  menu();
  columnaEntera();

  //display elementos GUI
  displayButtonsMenu();
}

void dibujaPantallaArchivo() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  bInicioSesion.setEnabled(false);
  enableButtonsMenu(true);
  enableButtonsTabla(true);
  bAceptar.setEnabled(false);
  bFicha.setEnabled(false);

  //dibujar elementos de la pantalla
  menu();
  tablaGrande();

  //display elementos GUI
  displayButtonsMenu();
  displayButtonsTabla();
  buscar.display();
}

void dibujaPantallaAvisos() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  bInicioSesion.setEnabled(false);
  enableButtonsMenu(true);
  enableButtonsTabla(false);
  bAceptar.setEnabled(false);
  bFicha.setEnabled(false);

  //dibujar elementos de la pantalla
  menu();
  avisos();
  calendario();

  //display elementos GUI
  displayButtonsMenu();
}

void dibujaPantallaEnlaces() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  bInicioSesion.setEnabled(false);
  enableButtonsMenu(true);
  enableButtonsTabla(false);
  bAceptar.setEnabled(false);
  bFicha.setEnabled(false);

  //dibujar elementos de la pantalla
  menu();
  columna1();
  columna2();

  //display elementos GUI
  displayButtonsMenu();
}

void dibujaPantallaCensoDetalle() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  bInicioSesion.setEnabled(false);
  enableButtonsMenu(true);
  enableButtonsTabla(false);
  bAceptar.setEnabled(true);
  bFicha.setEnabled(true);


  //dibujar elementos de la pantalla
  menu();


  //display elementos GUI
  displayButtonsMenu();
  detalleHermano();
  bAceptar.display();
  bFicha.display();
}

void dibujaPantallaCensoNuevoHermano() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  bInicioSesion.setEnabled(false);
  enableButtonsMenu(true);
  enableButtonsTabla(false);
  bAceptar.setEnabled(true);
  bFicha.setEnabled(true);

  //dibujar elementos de la pantalla
  menu();
  detalleHermano();

  //display elementos GUI
  displayButtonsMenu();
  bAceptar.display();
  bFicha.display();
}
