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
  tablaGrande();
  paginador();
  bAñadir= new Button("Añadir", menuWidth+20, primerIconY+20, 200, 50);
  bModificar= new Button("Modificar", (2*menuWidth)+20, primerIconY+20, 200, 50);
  bFiltrar= new Button("Filtrar", 800, primerIconY+33.5, 100, 25);
  enableButtonsCenso();
  bAñadir.display();
  bModificar.display();
  bFiltrar.display();
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
