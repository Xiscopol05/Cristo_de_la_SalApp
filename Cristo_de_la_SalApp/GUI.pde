//Configuración de los elementos de la GUI

// Creación de los elementos de la GUI
void setGUI() {
  initButtons();
  initTables();
  initTextField();
  initTextInfo();
}

// Botones
Button[] buttons;

//Botones del Menú principal
Button bInicioSesion, bCenso, bContabilidad, bArchivo, bAvisos, bEnlaces, bPrincipal;

// Creación de los botones de la GUI
Button bAñadir, bModificar, bAceptar, bFicha;

void initButtons() {
  buttons = new Button[11];
  buttons[0] = new Button("Principal", 1000, (bannerHeight/2)-13.5, 100, 25);
  buttons[1] = new Button("Censo", 0, primerIconY, iconWidth, iconHeight);
  buttons[2] = new Button("Contabilidad", 0, segundoIconY, iconWidth, iconHeight);
  buttons[3] = new Button("Archivo", 0, tercerIconY, iconWidth, iconHeight);
  buttons[4] = new Button("Avisos y alertas", 0, cuartoIconY, iconWidth, iconHeight );
  buttons[5] = new Button("Enlaces", 0, quintoIconY, iconWidth, iconHeight);
  buttons[6] = new Button("Iniciar sesión", 320+(marcoWidth/2)-75, 600, 150, 30);
  buttons[7] = new Button("Añadir", menuWidth+20, primerIconY+20, 200, 50);
  buttons[8] = new Button("Modificar", (2*menuWidth)+20, primerIconY+20, 200, 50);
  buttons[9] = new Button("Aceptar", 641+menuWidth, 20+bannerHeight, 403, 40);
  buttons[10] = new Button("Ficha Inscripción", 40+menuWidth, 605+bannerHeight, 574,60);


  bPrincipal = buttons[0];
  bCenso = buttons[1];
  bContabilidad = buttons[2];
  bArchivo =  buttons[3];
  bAvisos = buttons[4];
  bEnlaces = buttons[5];
  bInicioSesion = buttons[6];
  bAñadir = buttons[7];
  bModificar = buttons[8];
  bAceptar = buttons[9];
  bFicha = buttons[10];
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

void enableButtonsTabla(boolean enabled) {
  bAñadir.setEnabled(enabled);
  bModificar.setEnabled(enabled);
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

//TextField

// Declaració de les variables
TextField userText, passText;
TextField buscar;

void initTextField() {
  userText = new TextField((marcoWidth/2)-(marcoCuentaWidth/2)+20+inicioSesionX, (marcoHeight/2)-(marcoCuentaHeight/2)+130+inicioSesionY, 350, 35);
  passText = new TextField((marcoWidth/2)-(marcoCuentaWidth/2)+20+inicioSesionX, (marcoHeight/2)-(marcoCuentaHeight/2)+230+inicioSesionY, 350, 35);
  buscar = new TextField(800, primerIconY+25, 450, 35);
  buscar.setText("BUSCAR");
  userText.setText("usuario");
  passText.setText("contraseña");
}

void displayInicioSesiontf() {
  userText.display();
  passText.display();
}

//TextInfo

TextInfo titulo;
TextInfo nombre, apellidos, DNI, calle, numero, piso, localidad, provincia, telefono, correoElectronico;
TextInfo banco, titular, DNITitular, IBAN, entidad, oficina, digitoControl, numeroCuenta;

void initTextInfo() {
  titulo = new TextInfo ("Detalle personal", 20, 25, 605, 35);
  nombre = new TextInfo ("Nombre", 170, 95, 305, 45);
  apellidos = new TextInfo ("Apellidos", 500, 95, 535, 45);
  DNI = new TextInfo ("DNI", 695, 165, 340, 45);
  calle = new TextInfo ("Calle", 148, 235, 147, 45);
  numero = new TextInfo ("Nº", 313, 235, 89, 45);
  piso = new TextInfo ("Piso", 417, 235, 89, 45);
  localidad = new TextInfo ("Localidad", 521, 235, 198, 45);
  provincia = new TextInfo ("Provincia", 735, 235, 301, 45);
  telefono = new TextInfo ("Teléfono", 148, 297, 255, 45);
  correoElectronico = new TextInfo ("Correo Electrónico", 615, 297, 420, 45);
  banco = new TextInfo ("Banco", 235, 405, 800, 45);
  titular= new TextInfo ("Titular", 235, 462, 380, 45);
  DNITitular = new TextInfo ("DNI del titular", 649, 462, 386, 45);
  IBAN = new TextInfo ("IBAN", 40, 522, 165, 45);
  entidad = new TextInfo ("Entidad", 225, 522, 100, 45);
  oficina = new TextInfo ("Oficina", 341, 522, 100, 45);
  digitoControl = new TextInfo ("Dígito Control", 460, 522, 222, 45);
  numeroCuenta = new TextInfo ("Número de cuenta", 697, 522, 337, 45);
}


void displayDetalleHermano() {
  titulo.setColor(3);
  titulo.display();
  nombre.display();
  apellidos.display();
  DNI.display();
  calle.display();
  numero.display();
  piso.display();
  localidad.display();
  provincia.display();
  telefono.display();
  correoElectronico.display();
  banco.display();
  titular.display();
  DNITitular.display();
  IBAN.display();
  entidad.display();
  oficina.display();
  digitoControl.display();
  numeroCuenta.display();
}
