//Configuración de los elementos de la GUI
// Botones, ...

//Botones del Menú principal
Button bInicioSesion, bCenso, bContabilidad, bArchivo, bAvisos, bEnlaces, bPrincipal;

//Botones
Button bAñadir, bModificar, bFiltrar;

// Creación de los elementos de la GUI
void setGUI() {
  initButtons();
}

// Creación de los botones de la GUI
void initButtons() {
  bPrincipal = new Button("Principal", 1000, (bannerHeight/2)-13.5, 100, 25);
  bCenso = new Button("Censo", 0, primerIconY, iconWidth, iconHeight);
  bContabilidad = new Button("Contabilidad", 0, segundoIconY, iconWidth, iconHeight);
  bArchivo = new Button("Archivo", 0, tercerIconY, iconWidth, iconHeight);
  bAvisos = new Button("Avisos y alertas", 0, cuartoIconY, iconWidth, iconHeight );
  bEnlaces = new Button("Enlaces", 0, quintoIconY, iconWidth, iconHeight);
  bAñadir= new Button("Añadir", menuWidth+20, primerIconY+20, 200, 50);
  bModificar= new Button("Modificar", (2*menuWidth)+20, primerIconY+20, 200, 50);
  bFiltrar= new Button("Filtrar", 800, primerIconY+33.5, 100, 25);
  bInicioSesion = new Button("Iniciar sesión", 320+(marcoWidth/2)-75, 600, 150, 30);
}

// Activar los botones del menú
void enableButtons(boolean enabled) {
  bPrincipal.setEnabled(enabled);
  bCenso.setEnabled(enabled);
  bContabilidad.setEnabled(enabled);
  bArchivo.setEnabled(enabled);
  bAvisos.setEnabled(enabled);
  bEnlaces.setEnabled(enabled);
}

void enableButtonsTabla(boolean enable) {
  bAñadir.setEnabled(enable);
  bModificar.setEnabled(enable);
  bFiltrar.setEnabled(enable);
}

void displayButtonsTabla() {
  bAñadir.display();
  bModificar.display();
  bFiltrar.display();
}
