//Configuración de los elementos de la GUI

// Creación de los elementos de la GUI
void setGUI() {
  initButtons();
  initTextField();
  initTextInfo();
  initImgTextButton();
  initPagedTable();
  initCalendar();
  initLinesDiagram();
  initBarsDiagram();
}

// Botones
Button[] buttons;

Button bInicioSesion, bPrincipal;

// Creación de los botones de la GUI
Button bAñadir, bModificar, bAceptar, bFicha, bPrev, bNext, bFacebook, bTwitter, bInstagram, bYoutube, bAyuntamiento, bArzobispado, bWebCofrade, bOtrasHermandades, bBalance, bPresupuesto;

void initButtons() {
  buttons = new Button[18];
  buttons[0] = new Button("Principal", 1000, (bannerHeight/2)-13.5, 100, 25);
  buttons[1] = new Button("Iniciar sesión", 320+(marcoWidth/2)-75, 600, 150, 30);
  buttons[2] = new Button("Añadir", menuWidth+20, primerIconY+20, 200, 50);
  buttons[3] = new Button("Modificar", (2*menuWidth)+20, primerIconY+20, 200, 50);
  buttons[4] = new Button("Aceptar", 641+menuWidth, 20+bannerHeight, 403, 40);
  buttons[5] = new Button("Ficha Inscripción", 40+menuWidth, 605+bannerHeight, 574, 60);
  buttons[6] = new Button("PREV", 950, 730, 60, 60);
  buttons[7] = new Button("NEXT", 1050, 730, 60, 60);
  buttons[8] = new Button("Facebook", 325, bannerHeight+200, buttonEnlaceW, buttonEnlaceH);
  buttons[9] = new Button("Twitter", 325, bannerHeight+200+(20+buttonEnlaceH), buttonEnlaceW, buttonEnlaceH);
  buttons[10] = new Button("Instagram", 325, bannerHeight+200+2*(20+buttonEnlaceH), buttonEnlaceW, buttonEnlaceH);
  buttons[11] = new Button("Youtube", 325, bannerHeight+200+3*(20+buttonEnlaceH), buttonEnlaceW, buttonEnlaceH);
  buttons[12] = new Button("Arzobispado de Toledo", 835, bannerHeight+200, buttonEnlaceW, buttonEnlaceH);
  buttons[13] = new Button("Ayuntamiento de Bargas", 835, bannerHeight+200+(20+buttonEnlaceH), buttonEnlaceW, buttonEnlaceH);
  buttons[14] = new Button("Web Cofrade", 835, bannerHeight+200+2*(20+buttonEnlaceH), buttonEnlaceW, buttonEnlaceH);
  buttons[15] = new Button("Otras hermandades", 835, bannerHeight+200+3*(20+buttonEnlaceH), buttonEnlaceW, buttonEnlaceH);
  buttons[16] = new Button("Balance de ingresos y gastos", 825, 200, 400, 50);
  buttons[17] = new Button("Presupuesto", 825, 275, 400, 50);

  bPrincipal = buttons[0];
  bInicioSesion = buttons[1];
  bAñadir = buttons[2];
  bModificar = buttons[3];
  bAceptar = buttons[4];
  bFicha = buttons[5];
  bPrev = buttons[6];
  bNext = buttons[7];
  bFacebook = buttons[8];
  bTwitter =buttons[9];
  bInstagram= buttons[10];
  bYoutube= buttons[11];
  bArzobispado= buttons[12];
  bAyuntamiento= buttons[13];
  bWebCofrade= buttons[14];
  bOtrasHermandades= buttons[15];
  bBalance = buttons[16];
  bPresupuesto = buttons[17];
}
//Desactivar todos los botones
void disableButtons() {
  for (int i = 0; i<buttons.length; i++) {
    buttons[i].setEnabled(false);
  }
  itbCenso.setEnabled(false);
  itbContabilidad.setEnabled(false);
  itbArchivo.setEnabled(false);
  itbAvisos.setEnabled(false);
  itbEnlaces.setEnabled(false);
}

void enableButtonsTabla() {
  bAñadir.setEnabled(true);
  bModificar.setEnabled(true);
}

void enableButtonsPagedTable() {
  bNext.setEnabled(true);
  bPrev.setEnabled(true);
}

void enableButtonsContabilidad() {
  bBalance.setEnabled(true);
  bPresupuesto.setEnabled(true);
}

void displayButtonsTabla() {
  bAñadir.display();
  bModificar.display();
}

// Dibuixa els botons
void displayButtonsPagedTable() {
  bNext.display();
  bPrev.display();
}

void enableButtonsEnlaces() {
  bFacebook.setEnabled(true);
  bTwitter.setEnabled(true);
  bInstagram.setEnabled(true);
  bYoutube.setEnabled(true);
  bArzobispado.setEnabled(true);
  bAyuntamiento.setEnabled(true);
  bWebCofrade.setEnabled(true);
  bOtrasHermandades.setEnabled(true);
}
void displayButtonsEnlaces() {
  bFacebook.setTextFont(8);
  bTwitter.setTextFont(8);
  bInstagram.setTextFont(8);
  bYoutube.setTextFont(8);
  bFacebook.display();
  bTwitter.display();
  bInstagram.display();
  bYoutube.display();
  bArzobispado.display();
  bAyuntamiento.display();
  bWebCofrade.display();
  bOtrasHermandades.display();
}

//tablas

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
  {"6", "Pere", "Soler Miralles", "33", "Home"},
  {"7", "Maria", "Garcia Lopez", "25", "Dona"},
  {"8", "Joan", "Melis Cabrer", "47", "Home"},
  {"9", "Bel", "Riera Mates", "52", "Dona"},
  {"10", "Jose", "Perez Galdós", "37", "Home"},
  {"11", "Pere", "Soler Miralles", "33", "Home"},
  {"12", "Maria", "Garcia Lopez", "25", "Dona"},
  {"13", "Joan", "Melis Cabrer", "47", "Home"},
  {"14", "Bel", "Riera Mates", "52", "Dona"},
  {"15", "Jose", "Perez Galdós", "37", "Home"},
};
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

//ImgTextButton

ImgTextButton[] imgtextbuttons;
ImgTextButton itbCenso, itbContabilidad, itbArchivo, itbAvisos, itbEnlaces;

void initImgTextButton() {
  imgtextbuttons = new ImgTextButton[6];
  imgtextbuttons[0] = new ImgTextButton(getIconCenso(), "Censo", 0, primerIconY, iconWidth, iconHeight);
  imgtextbuttons[1] = new ImgTextButton(getIconContabilidad(), "Contabilidad", 0, segundoIconY, iconWidth, iconHeight);
  imgtextbuttons[2] = new ImgTextButton(getIconArchivo(), "Archivo", 0, tercerIconY, iconWidth, iconHeight);
  imgtextbuttons[3] = new ImgTextButton(getIconAvisos(), "Avisos y alertas", 0, cuartoIconY, iconWidth, iconHeight );
  imgtextbuttons[4] = new ImgTextButton(getIconEnlaces(), "Enlaces", 0, quintoIconY, iconWidth, iconHeight);

  itbCenso = imgtextbuttons[0];
  itbContabilidad = imgtextbuttons[1];
  itbArchivo = imgtextbuttons[2];
  itbAvisos = imgtextbuttons[3];
  itbEnlaces = imgtextbuttons[4];
}

// Activar los botones del menú
void enableButtonsMenu() {
  itbCenso.setEnabled(true);
  itbContabilidad.setEnabled(true);
  itbArchivo.setEnabled(true);
  itbAvisos.setEnabled(true);
  itbEnlaces.setEnabled(true);
  bPrincipal.setEnabled(true);
}

void displayButtonsMenu() {
  itbCenso.display();
  itbContabilidad.display();
  itbArchivo.display();
  itbAvisos.display();
  itbEnlaces.display();
}

//PagedTable

PagedTable pt;


void initPagedTable() {
  pt = new PagedTable(files, columnes);
  pt.setHeaders(headers);
  pt.setData(info);
  pt.setColumnWidths(colWidths);
}

void displayPagedTable() {
  pt.display(20+menuWidth, 304, 1280-menuWidth-40, 410);
}

//calendario


// Variable de Calendari
Calendario cEventos;

String[][] fechasClave = {{"2021-03-15", "CUMPLE"}, {"2021-03-28", "FESTA"}};

void initCalendar() {
  cEventos = new Calendario(menuWidth+20+((1280-menuWidth)/2), primerIconY+iconHeight+20, ((1280-menuWidth)/2)-35, (iconHeight*3)-50, fechasClave);
}

void displayCalendarioEventos() {
  cEventos.display();
}

//LinesDiagram

LinesDiagram ldIngresos;

// Dades del Diagrama (etiquetes)
String[] textos  = {"Jan", "Feb", "Mar", "Apr", "May", "Jun",
  "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };

// Dades del Diagrama (valors)
float[] values  = {400, 600, 100, 300, 55, 100, 90, 220, 186, 400, 600, 10 };

// Color de la línia
color colorLine = color(150, 50, 200);

void initLinesDiagram() {
  ldIngresos = new LinesDiagram(menuWidth+50, bannerHeight+50, (width/2)-100, (height/2)-100);

  // Configuració de Dades (textos, valors, colors)
  ldIngresos.setTexts(textos);
  ldIngresos.setValues(values);
  ldIngresos.setColors(colorLine);
}

//BarsDiagram

BarsDiagram gastos;

String[] textosbd = {"WATER", "AIR", "FIRE", "EARTH"};
float[] valuesbd = {400, 600, 100, 300};
color[] colorsbd = {color(0, 0, 255), color(50, 50, 200),
  color(255, 0, 0), color(0, 255, 0)};

void initBarsDiagram() {
  gastos = new BarsDiagram(840, 420, 400, 300);

  // Configuració de Dades (textos, valors, colors)
  gastos.setTexts(textosbd);
  gastos.setValues(valuesbd);
  gastos.setColors(colorsbd);
}
