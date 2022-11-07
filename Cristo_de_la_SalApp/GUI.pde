//Configuración de los elementos de la GUI
// Botones, ...

//Botones del Menú principal
Button bPrincipal, bCenso, bContabilidad, bArchivo, bAvisos, bEnlaces;

//Botones
Button bAñadir, bModificar, bFiltrar;

// Creación de los elementos de la GUI
void setGUI() {
  initButtons();
}

// Creación de los botones de la GUI
void initButtons() {
  bCenso = new Button("Censo", 0, primerIconY, iconWidth, iconHeight);
  bContabilidad = new Button("Contabilidad", 0, segundoIconY, iconWidth, iconHeight);
  bArchivo = new Button("Archivo", 0, tercerIconY, iconWidth, iconHeight);
  bAvisos = new Button("Avisos y alertas", 0, cuartoIconY, iconWidth, iconHeight );
  bEnlaces = new Button("Enlaces", 0, quintoIconY, iconWidth, iconHeight);
}

// Activar los botones del menú
void enableButtons(boolean enabled) {
  bCenso.setEnabled(enabled);
  bContabilidad.setEnabled(enabled);
  bArchivo.setEnabled(enabled);
  bAvisos.setEnabled(enabled);
  bEnlaces.setEnabled(enabled);
}

void enableButtonsCenso(){
  bAñadir.setEnabled(true);
  bModificar.setEnabled(true);
  bFiltrar.setEnabled(true);
}
