// Funciones de dibujo de las pantallas

void dibujaPantallaInicio() {
  //imagen de fondo
  image(getFondoManton(), 0, 0, 1280, 800 );

  //habilitar y deshabilitar botones
  disableButtons();
  bInicioSesion.setEnabled(comprovaLogin());


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
  disableButtons();
  enableButtonsMenu();


  //dibujar elementos de la pantalla
  menu();
  tituloCarruselFotos();
  pushStyle();
  pushMatrix();
  translate(menuWidth, bannerHeight);
  image(getImgAt(9), 35, 70, 555, 575); //temporal... añadir carrusel de imagenes con cambio a los 10 segundos
  popStyle();
  popMatrix();
  //display elementos GUI
  displayButtonsMenu();
}

void dibujaPantallaCenso() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  enableButtonsTabla();
  enableButtonsPagedTable();

  //dibujar elementos de la pantalla
  menu();


  //display elementos GUI
  displayButtonsMenu();
  displayButtonsTabla();
  buscar.display();
  displayPagedTable();
  displayButtonsPagedTable();
}

void dibujaPantallaContabilidad() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  enableButtonsContabilidad();

  //dibujar elementos de la pantalla
  menu();
  pushStyle();
  textFont(getFontAt(1));
  text("Estado de cuentas: " + estadoDeCuentas+ " €", 250, 700);
  popStyle();

  //display elementos GUI
  displayButtonsMenu();
  ldIngresos.display();
  gastos.display();
  bBalance.display();
  bPresupuesto.display();
}

void dibujaPantallaArchivo() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  enableButtonsTabla();
  enableButtonsPagedTable();

  //dibujar elementos de la pantalla
  menu();
  displayPagedTable();

  //display elementos GUI
  displayButtonsMenu();
  displayButtonsTabla();
  buscar.display();
  displayButtonsPagedTable();
}

void dibujaPantallaAvisos() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();


  //dibujar elementos de la pantalla
  menu();
  avisos();


  //display elementos GUI
  displayButtonsMenu();
  displayCalendarioEventos();
}

void dibujaPantallaEnlaces() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  enableButtonsEnlaces();


  //dibujar elementos de la pantalla
  menu();
  cuadroEnlacesRRSS();
  cuadroEnlacesVarios();

  //display elementos GUI
  displayButtonsMenu();
  displayButtonsEnlaces();
}

void dibujaPantallaCensoDetalle() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
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
  disableButtons();
  enableButtonsMenu();
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

void dibujaPantallaContabilidadBalance() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();

  //dibujar elementos de la pantalla
  menu();


  //display elementos GUI
  displayButtonsMenu();
}


void dibujaPantallaContabilidadPresupuesto() {
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();

  //dibujar elementos de la pantalla
  menu();


  //display elementos GUI
  displayButtonsMenu();
}
