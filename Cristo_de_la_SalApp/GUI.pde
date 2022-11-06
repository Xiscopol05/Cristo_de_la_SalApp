//Configuración de los elementos de la GUI
// Botones, ...

//Botones del Menú principal
Button bPrincipal, bCenso, bContabilidad, bArchivo, bAvisos, bEnlaces;

// Creació dels elements de la GUI
void setGUI() {
  initButtons();
}

// Creació dels botons de la GUI
void initButtons() {
  bCenso = new Button("Censo", 0, primerIconY, iconWidth, iconHeight);
  bContabilidad = new Button("Contabilidad", 0, segundoIconY, iconWidth, iconHeight);
  bArchivo = new Button("Archivo", 0, tercerIconY, iconWidth, iconHeight);
  bAvisos = new Button("Avisos y alertas", 0, cuartoIconY, iconWidth, iconHeight );
  bEnlaces = new Button("Enlaces", 0, quintoIconY, iconWidth, iconHeight);
}

// Activar els botons del menú
void enableButtons() {
  bCenso.setEnabled(true);
  bContabilidad.setEnabled(true);
  bArchivo.setEnabled(true);
  bAvisos.setEnabled(true);
  bEnlaces.setEnabled(true);
}
