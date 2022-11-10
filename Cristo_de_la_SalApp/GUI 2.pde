//Configuración de los elementos de la GUI
// Botones, ...

//Botones del Menú principal
Button bInicioSesion, bCenso, bContabilidad, bArchivo, bAvisos, bEnlaces, bPrincipal;

//Botones
Button bAñadir, bModificar, bFiltrar;

// Creación de los elementos de la GUI
void setGUI() {
  initButtons();
  initTextField();
  initTable();
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

//tablas
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

void initTable() {
  t = new Table(files, columnes);
  t.setHeaders(headers);
  t.setData(info);
  t.setColumnWidths(colWidths);
}

//Select
// Selects de la GUI
Select s1, s2;

// Valors dels Selects
String[] selectValues = {"RED", "GREEN", "BLUE"};
String[] selectValues2 = {"1", "2", "3"};

// Dimensions dels botons
float selectW = 300;
float selectH = 30;

// Color de fons de l'App
color bgColor = color(255);

// Valor numèric
int n = 0;


//textField
TextField tfBuscar;

void initTextField() {
  tfBuscar = new TextField(710, primerIconY-(iconHeight/2)-5, 300, 25);
}
