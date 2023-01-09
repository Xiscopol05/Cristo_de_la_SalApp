// Funciones de dibujo de las pantallas

void dibujaPantallaInicio() {

  pushMatrix();
  pushStyle();
  //imagen de fondo
  image(getFondoManton(), 0, 0, 1280, 800 );

  //habilitar y deshabilitar botones
  disableButtons();
  bInicioSesion.setEnabled(comprovaLogin());


  //dibujar elementos de la pantalla
  fill(0);
  inicioSesion();
  //display elementos GUI
  bInicioSesion.display();
  displayInicioSesiontf();
  popStyle();
  popMatrix();
}

void dibujaPantallaPrincipal() {
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();


  //dibujar elementos de la pantalla
  menu();
  tituloCarruselFotos();
  fila1();
  fila2();

  //display elementos GUI
  displayButtonsMenu();

  translate(menuWidth, bannerHeight);
  cristo.display();

  popStyle();
  popMatrix();
}

void dibujaPantallaCenso() {
  pushMatrix();
  pushStyle();
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
  stCenso.display();
  displayButtonsPagedTableCenso();
  popStyle();
  popMatrix();
}

void dibujaPantallaContabilidad() {
  pushMatrix();
  pushStyle();
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
  fill(0);
  text("Estado de cuentas: " + estadoDeCuentas+ " €", 250, 700);
  popStyle();

  //display elementos GUI
  displayButtonsMenu();
  ldIngresos.display();
  gastos.display();
  bBalance.display();
  bPresupuesto.display();
  popStyle();
  popMatrix();
}

void dibujaPantallaArchivo() {
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  enableButtonsTabla();
  bPrevArchivo.setEnabled(true);
  bNextArchivo.setEnabled(true);
  //dibujar elementos de la pantalla
  menu();
  stArchivo.display();

  //display elementos GUI
  displayButtonsMenu();
  displayButtonsTabla();
  displayButtonsPagedTableArchivo();
  popStyle();
  popMatrix();
}

void dibujaPantallaAvisos() {
  pushMatrix();
  pushStyle();
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
  popStyle();
  popMatrix();
}

void dibujaPantallaEnlaces() {
  pushMatrix();
  pushStyle();
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
  popStyle();
  popMatrix();
}

void dibujaPantallaCensoDetalle() {
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  if (admin==true) {
    bAceptarCenso.setEnabled(true);
  }
  bFicha.setEnabled(true);


  //dibujar elementos de la pantalla
  menu();

  //display elementos GUI
  displayButtonsMenu();
  detalleHermano();
  if (admin==true) {
    bAceptarCenso.display();
  }
  bFicha.display();
  pushMatrix();
  translate(menuWidth, bannerHeight);
  if (admin== true) {
    titDetallePersonal.display();
  } else {
    titDetallePersonalUser.display();
  }
  popMatrix();

  popStyle();
  popMatrix();
}

void dibujaPantallaCensoNuevoHermano() {
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  bAceptarCenso.setEnabled(true);
  bFicha.setEnabled(true);
  bCalendario.setEnabled(true);
  bCalendarioAlta.setEnabled(true);

  //dibujar elementos de la pantalla
  menu();

  //display elementos GUI
  displayButtonsMenu();
  bAceptarCenso.display();
  bFicha.display();
  nuevoHermano();
  displaytfNuevoHermano();
  displaycpFechaNacimiento();
  displaycpFechaAlta();
  popStyle();
  popMatrix();
}

void dibujaPantallaContabilidadBalance() {
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  bPrevGastos.setEnabled(true);
  bNextGastos.setEnabled(true);
  bAñadirConcepto.setEnabled(true);
  bDetalleBalance.setEnabled(true);

  //dibujar elementos de la pantalla
  menu();


  //display elementos GUI
  displayButtonsMenu();
  titIngresos.display();
  titGastos.display();
  bDetalleBalance.display();
  stBalanceIngresos.display();
  stGastos.display();
  bPrevGastos.display();
  bNextGastos.display();
  bAñadirConcepto.display();
  popStyle();
  popMatrix();
}


void dibujaPantallaContabilidadPresupuesto() {
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  bPrevGastos.setEnabled(true);
  bNextGastos.setEnabled(true);
  bAñadirConcepto.setEnabled(true);

  //dibujar elementos de la pantalla
  menu();


  //display elementos GUI
  displayButtonsMenu();
  titIngresos.display();
  titGastos.display();
  stBalanceIngresos.display();
  stGastosPresupuesto.display();
  bPrevGastos.display();
  bNextGastos.display();
  bAñadirConcepto.display();
  popStyle();
  popMatrix();
}

void dibujaPantallaContabilidadAñadirConcepto() {
  pushStyle();

  pushMatrix();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();

  bAceptarConcepto.setEnabled(true);
  bCalendarioMovimiento.setEnabled(true);
  bAñadirRecibo.setEnabled(true);
  if (cpFechaMovimiento.visible == true) {
    disableButtons();
    bAceptarConcepto.setEnabled(false);
    bCalendarioMovimiento.setEnabled(false);
    bAñadirRecibo.setEnabled(false);
  }

  //dibujar elementos de la pantalla
  menu();
  textFont(getFontAt(8));
  text("Fecha de movimiento: ", 230, 440);


  //display elementos GUI
  displayButtonsMenu();
  titConcepto.display();
  tfTitulo.display();
  tfCantidad.display();
  bAceptarConcepto.display();
  bAñadirRecibo.display();
  pushStyle();
  textFont(getFontAt(7));
  stlTipoConcepto.display();
  popStyle();
  displaycpFechaMovimiento();
  popMatrix();
}

void dibujaPantallaContabilidadDetalleBalance() {
  pushMatrix();
  pushStyle();
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  bAceptarConcepto.setEnabled(true);
  bPrevDetalle.setEnabled(true);
  bNextDetalle.setEnabled(true);
  bDetalleConcepto.setEnabled(true);

  //dibujar elementos de la pantalla
  menu();

  //display elementos GUI
  displayButtonsMenu();
  tDetalleItem.display(45+menuWidth, 230+bannerHeight, 1000, 65);
  stDetalleItem.display();
  bPrevDetalle.display();
  bNextDetalle.display();
  bDetalleConcepto.display();
  popStyle();
  popMatrix();
}

void dibujaPantallaContabilidadDetalleMovimiento() {
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  bAceptarConcepto.setEnabled(true);

  //dibujar elementos de la pantalla
  menu();
  textFont(getFontAt(8));
  text("Fecha de movimiento: ", 230, 440);


  //display elementos GUI
  displayButtonsMenu();
  titConcepto.display();
  bAceptarConcepto.display();
  tiTitulo.display();
  tiCantidad.display();
  tiFechaMovimiento.display();
  tiTipo.display();
  popStyle();
  popMatrix();
}

void dibujaPantallaArchivoNuevo() {
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();

  bCalendarioArchivo.setEnabled(true);
  itbInsertarArchivo.setEnabled(true);
  bAceptarArchivo.setEnabled(true);
  if (sCategoriaArchivo.collapsed == false) {
    itbInsertarArchivo.setEnabled(false);
  }

  //dibujar elementos de la pantalla
  menu();
  textFont(getFontAt(8));
  text("Fecha de datación: ", 230, 440);


  //display elementos GUI
  displayButtonsMenu();
  titArchivo.display();
  bAceptarArchivo.display();
  tfTituloArchivo.display();
  itbInsertarArchivo.display();
  sCategoriaArchivo.display();
  displaycpFechaArchivo();
  popStyle();
  popMatrix();
}

void dibujaPantallaArchivoDetalle() {
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();

  //dibujar elementos de la pantalla
  menu();

  //display elementos GUI
  displayButtonsMenu();
  titArchivo.display();
  popStyle();
  popMatrix();
}

void dibujaPantallaAvisosNuevoAviso(){
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  itbInsertarArchivoAvisos.setEnabled(true);


  //dibujar elementos de la pantalla
  menu();
  
  //display elementos GUI
  displayButtonsMenu();
  titNuevoAviso.display();
  bAceptarAvisosAlertas.display();
  tfTituloAviso.display();
  taNuevoAviso.display();
  itbInsertarArchivoAvisos.display();
  popStyle();
  popMatrix();
}

void dibujaPantallaAvisosNuevoEvento(){
  
}
