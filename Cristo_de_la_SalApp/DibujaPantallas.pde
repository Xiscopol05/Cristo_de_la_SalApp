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
  ptCenso.display(20+menuWidth, 285, 1280-menuWidth-40, 410);
  displayButtonsPagedTable();
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
  enableButtonsPagedTable();

  //dibujar elementos de la pantalla
  menu();
  ptCenso.display(20+menuWidth, 285, 1280-menuWidth-40, 410);

  //display elementos GUI
  displayButtonsMenu();
  displayButtonsTabla();
  buscar.display();
  displayButtonsPagedTable();
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
  bAceptarCenso.setEnabled(true);
  bFicha.setEnabled(true);


  //dibujar elementos de la pantalla
  menu();


  //display elementos GUI
  displayButtonsMenu();
  detalleHermano();
  bAceptarCenso.display();
  bFicha.display();
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

  //dibujar elementos de la pantalla
  menu();

  //display elementos GUI
  displayButtonsMenu();
  bAceptarCenso.display();
  bFicha.display();
  nuevoHermano();
  displayNuevoHermano();
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

  //dibujar elementos de la pantalla
  menu();


  //display elementos GUI
  displayButtonsMenu();
  titIngresos.display();
  titGastos.display();
  balanceIngresos.display(250,210,800,240);
  ptGastos.display(250,510,800,240);
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
  balanceIngresos.display(250,210,800,240);
  ptGastosPresupuesto.display(250,510,800,240);
  bPrevGastos.display();
  bNextGastos.display();
  bAñadirConcepto.display();
  popStyle();
  popMatrix();
}

void dibujaPantallaContabilidadAñadirConcepto() {
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
  tfTitulo.display();
  tfCantidad.display();
  bAceptarConcepto.display();
  sTipoConcepto.display();
  popStyle();
  popMatrix();
}
