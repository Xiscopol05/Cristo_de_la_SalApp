//Configuración de los elementos de la GUI

// Creación de los elementos de la GUI
void setGUI() {
  initButtons();
  initTables();
}

// Botones, ...
Button[] buttons;

//Botones del Menú principal
Button bInicioSesion, bCenso, bContabilidad, bArchivo, bAvisos, bEnlaces, bPrincipal;

//Botones
Button bAñadir, bModificar, bFiltrar;

// Creación de los botones de la GUI

void initButtons() {
  buttons = new Button[10];
  buttons[0] = new Button("Principal", 1000, (bannerHeight/2)-13.5, 100, 25);
  buttons[1] = new Button("Censo", 0, primerIconY, iconWidth, iconHeight);
  buttons[2] = new Button("Contabilidad", 0, segundoIconY, iconWidth, iconHeight);
  buttons[3] = new Button("Archivo", 0, tercerIconY, iconWidth, iconHeight);
  buttons[4] = new Button("Avisos y alertas", 0, cuartoIconY, iconWidth, iconHeight );
  buttons[5] = new Button("Enlaces", 0, quintoIconY, iconWidth, iconHeight);
  buttons[6] = new Button("Añadir", menuWidth+20, primerIconY+20, 200, 50);
  buttons[7] = new Button("Modificar", (2*menuWidth)+20, primerIconY+20, 200, 50);
  buttons[8] = new Button("Filtrar", 800, primerIconY+33.5, 100, 25);
  buttons[9] = new Button("Iniciar sesión", 320+(marcoWidth/2)-75, 600, 150, 30);

  bPrincipal = buttons[0];
  bCenso = buttons[1];
  bContabilidad = buttons[2];
  bArchivo =  buttons[3];
  bAvisos = buttons[4];
  bEnlaces = buttons[5];
  bAñadir= buttons[6];
  bModificar= buttons[7];
  bFiltrar= buttons[8];
  bInicioSesion = buttons[9];
}

// Activar los botones del menú
void enableButtonsMenu(boolean enabled) {
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

void displayButtonsMenu() {
  bCenso.display();
  bContabilidad.display();
  bArchivo.display();
  bAvisos.display();
  bEnlaces.display();
}

void displayButtonsTabla() {
  bAñadir.display();
  bModificar.display();
  bFiltrar.display();
}

// Tabla
Table t;

// Dimensions de la taula
float tableW = 800, tableH = 300;

// Número de files (capçalera inclosa) i columnes de la taula
int files = 6, columnes = 5;

// Títols de les columnes
String[] headers = {"Id", "Nom", "Llinatges", "Edat", "Sexe"};

// Amplades de les columnes
float[] colWidths = {10, 20, 40, 10, 20};

// Dades de la taula
String[][] info = {
  {"1", "Pere", "Soler Miralles", "33", "Home"},
  {"2", "Maria", "Garcia Lopez", "25", "Dona"},
  {"3", "Joan", "Melis Cabrer", "47", "Home"},
  {"4", "Bel", "Riera Mates", "52", "Dona"},
  {"5", "Jose", "Perez Galdós", "37", "Home"},
};

void initTables() {
  t = new Table(files, columnes);
  t.setHeaders(headers);
  t.setData(info);
  t.setColumnWidths(colWidths);
}
