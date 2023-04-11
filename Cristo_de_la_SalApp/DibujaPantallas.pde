// Funciones de dibujo de las pantallas

void dibujaPantallaInicio() {

  pushMatrix();
  pushStyle();
  background(colors[1]);


  //habilitar y deshabilitar botones
  disableButtons();
  bInicioSesion.setEnabled(comprovaLogin());



  //dibujar elementos de la pantalla
  fill(0);
  inicioSesion();
  //display elementos GUI
  bInicioSesion.display();
  displayInicioSesiontf();
  PopUpinicioSesion.setVisible(false);

  if (logged == true) {
    PopUpinicioSesion.setTexts("Bienvenido, " + userText.getValue(), "Usuario y contraseña correctos");
    PopUpinicioSesion.setVisible(true);
    PopUpinicioSesion.bAceptar.setEnabled(true);
  }

  PopUpinicioSesion.display();
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
  pcAvisosPrincipal.display();
  //fila2();

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
  text("Estado de cuentas: " + estadoDeCuentas+ " €", 250, 450);
  popStyle();

  //display elementos GUI
  displayButtonsMenu();
  //ldIngresos.display();
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
  bPrevAviso.setEnabled(true);
  bNextAviso.setEnabled(true);
  bAñadirAviso.setEnabled(true) ;
  bModificarAviso.setEnabled(true);
  bDetalleAviso.setEnabled(true);
  bAñadirEvento.setEnabled(true);
  bModificarEvento.setEnabled(true);
  bDetalleEvento.setEnabled(true);
  bMesAnteriorAviso.setEnabled(true);
  bMesPosteriorAviso.setEnabled(true);

  //dibujar elementos de la pantalla
  menu();

  //display elementos GUI
  displayButtonsMenu();
  displayCalendarioEventos();
  pcAvisos.display();
  bPrevAviso.display();
  bNextAviso.display();
  bAñadirAviso.display();
  bModificarAviso.display();
  bDetalleAviso.display();
  bAñadirEvento.display();
  bModificarEvento.display();
  bDetalleEvento.display();
  bMesAnteriorAviso.display();
  bMesPosteriorAviso.display();

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
    bAceptarCensoDetalle.setEnabled(true);
  }
  bFicha.setEnabled(true);


  //dibujar elementos de la pantalla
  menu();

  //display elementos GUI
  displayButtonsMenu();
  detalleHermano();
  if (admin==true) {
    bAceptarCensoDetalle.display();
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
  tDetalleItem.display(45+menuWidth, 130+bannerHeight, 1000, 65);
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
  text("Año de datación: ", 230, 440);


  //display elementos GUI
  displayButtonsMenu();
  titArchivo.display();
  bAceptarArchivo.display();
  tfTituloArchivo.display();
  itbInsertarArchivo.display();
  sCategoriaArchivo.display();
  tfAñoDatacion.display();
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
  bAceptarArchivo.setEnabled(true);

  //dibujar elementos de la pantalla
  menu();
  text("Fecha de datación: ", 230, 440);


  //display elementos GUI
  displayButtonsMenu();
  titArchivo.display();
  bAceptarArchivo.display();
  tiTituloArchivo.display();
  itbVerArchivoArchivo.display();
  tiCategoriaArchivo.display();
  tiAñoDatacion.display();
  popStyle();
  popMatrix();
}

void dibujaPantallaAvisosNuevoAviso() {
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  
  bAceptarAvisosAlertas.setEnabled(true);


  //dibujar elementos de la pantalla
  menu();

  //display elementos GUI
  displayButtonsMenu();
  titNuevoAviso.display();
  bAceptarAvisosAlertas.display();
  tfTituloAviso.display();
  taNuevoAviso.display();
  
  popStyle();
  popMatrix();
}

void dibujaPantallaAvisosDetalleAviso() {
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  
  bAceptarAvisosAlertas.setEnabled(true);


  //dibujar elementos de la pantalla
  menu();

  //display elementos GUI
  displayButtonsMenu();
  titDetalleAviso.display();
  bAceptarAvisosAlertas.display();
  tiTituloDetalleAviso.display();
  tiDetalleAviso.display();
  
  popStyle();
  popMatrix();
}

void dibujaPantallaAvisosNuevoEvento() {
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
 
  bAceptarAvisosAlertas.setEnabled(true);
  bCalendarioEvento.setEnabled(true);

  //dibujar elementos de la pantalla
  menu();
  pushStyle();
  textFont(getFontAt(5));
  text("Fecha:", 600+menuWidth, 600+bannerHeight);
  popStyle();

  //display elementos GUI
  displayButtonsMenu();
  titNuevoEvento.display();
  bAceptarAvisosAlertas.display();
  tfTituloEvento.display();
  taNuevoEvento.display();
  
  displaycpNuevoEvento();
  //tiDetalleEvento.display();
  popStyle();
  popMatrix();
}

void dibujaPantallaAvisosDetalleEvento() {
  pushMatrix();
  pushStyle();
  //imagen de fondo
  background(255);

  //habilitar y deshabilitar botones
  disableButtons();
  enableButtonsMenu();
  bAceptarAvisosAlertas.setEnabled(true);
  bCalendarioEvento.setEnabled(true);

  //dibujar elementos de la pantalla
  menu();
  pushStyle();
  textFont(getFontAt(5));
  text("Fecha:", 600+menuWidth, 600+bannerHeight);
  fill(255);
  rect(680+menuWidth, 575+bannerHeight, 200, 45);
  popStyle();

  //display elementos GUI
  displayButtonsMenu();
  titDetalleEvento.display();
  bAceptarAvisosAlertas.display();
  tiDetalleEvento.display();
  tiTituloDetalleEvento.display();
  //displaycpNuevoEvento();

  popStyle();
  popMatrix();
}
