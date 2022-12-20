//Configuración de los elementos de la GUI

// Creación de los elementos de la GUI
void setGUI() {
  initButtons();
  initTextField();
  initTextInfo();
  initImgTextButton();
  initCalendar();
  initLinesDiagram();
  initBarsDiagram();
  initShowImage();
  initTitulo();
  initSelect();
  initSelectTable();
  initCalendariPlus();
}

// Botones
Button[] buttons;

Button bInicioSesion, bPrincipal;

// Creación de los botones de la GUI
Button bAñadir, bModificar, bDetalle, bAceptarCenso, bFicha, bPrevCenso, bNextCenso, bPrevGastos, bNextGastos, bFacebook, bTwitter, bInstagram, bYoutube, bAyuntamiento, bArzobispado, bWebCofrade, bOtrasHermandades, bBalance, bPresupuesto, bAñadirConcepto;
Button bAceptarConcepto, bCalendario, bCalendarioAlta;

void initButtons() {
  buttons = new Button[25];
  buttons[0] = new Button("Principal", 850, (bannerHeight/2)-13.5, 100, 25);
  buttons[1] = new Button("Iniciar sesión", 320+(marcoWidth/2)-75, 600, 150, 30);
  buttons[2] = new Button("Añadir", menuWidth+20, primerIconY+20, 200, 50);
  buttons[3] = new Button("Modificar", (2*menuWidth)+20, primerIconY+20, 200, 50);
  buttons[4] = new Button("Aceptar", 641+menuWidth, 20+bannerHeight, 403, 40);
  buttons[5] = new Button("Ficha Inscripción", 40+menuWidth, 605+bannerHeight, 574, 60);
  buttons[6] = new Button("PREV", 950, 715, 60, 60);
  buttons[7] = new Button("NEXT", 1050, 715, 60, 60);
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
  buttons[18] = new Button("PREV", 1080, 680, 150, 30);
  buttons[19] = new Button("NEXT", 1080, 720, 150, 30);
  buttons[20] = new Button("Añadir concepto", 1080, 170, 150, 40);
  buttons[21] = new Button("Aceptar", 645+menuWidth, 175+bannerHeight, 405, 40);
  buttons[22] = new Button("Detalle", (3*menuWidth)+20, primerIconY+20, 200, 50);
  buttons [23] = new Button("Calendario", 575, 165+bannerHeight, 100, 45);
  buttons[24] = new Button("Calendario", 970, 605+bannerHeight, 100, 45);


  bPrincipal = buttons[0];
  bInicioSesion = buttons[1];
  bAñadir = buttons[2];
  bModificar = buttons[3];
  bAceptarCenso = buttons[4];
  bFicha = buttons[5];
  bPrevCenso = buttons[6];
  bNextCenso = buttons[7];
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
  bPrevGastos = buttons[18];
  bNextGastos = buttons[19];
  bAñadirConcepto = buttons[20];
  bAceptarConcepto = buttons[21];
  bDetalle = buttons[22];
  bCalendario = buttons[23];
  bCalendarioAlta = buttons[24];
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
  bDetalle.setEnabled(true);
}

void enableButtonsPagedTable() {
  bNextCenso.setEnabled(true);
  bPrevCenso.setEnabled(true);
}

void enableButtonsContabilidad() {
  bBalance.setEnabled(true);
  bPresupuesto.setEnabled(true);
}

void displayButtonsTabla() {
  bAñadir.display();
  bModificar.display();
  bDetalle.display();
}

// Dibuixa els botons
void displayButtonsPagedTable() {
  bNextCenso.display();
  bPrevCenso.display();
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
  bArzobispado.setTextFont(8);
  bAyuntamiento.setTextFont(8);
  bWebCofrade.setTextFont(8);
  bOtrasHermandades.setTextFont(8);
  bFacebook.display();
  bTwitter.display();
  bInstagram.display();
  bYoutube.display();
  bArzobispado.display();
  bAyuntamiento.display();
  bWebCofrade.display();
  bOtrasHermandades.display();
}


//TextField

// Declaració de les variables
TextField userText, passText;
TextField buscar;
TextField tfNombre, tfApellidos, tfDNI, tfCalle, tfNumero, tfPiso, tfLocalidad, tfProvincia, tfTelefono, tfCorreoElectronico;
TextField tfBanco, tfTitular, tfDNITitular, tfIBAN, tfEntidad, tfOficina, tfDigitoControl, tfNumeroCuenta;
TextField tfTitulo, tfCantidad;

void initTextField() {
  userText = new TextField("usuario", (marcoWidth/2)-(marcoCuentaWidth/2)+20+inicioSesionX, (marcoHeight/2)-(marcoCuentaHeight/2)+130+inicioSesionY, 350, 35);
  passText = new TextField("contraseña", (marcoWidth/2)-(marcoCuentaWidth/2)+20+inicioSesionX, (marcoHeight/2)-(marcoCuentaHeight/2)+230+inicioSesionY, 350, 35);
  buscar = new TextField("BUSCAR", 850, primerIconY+25, 410, 35);
  tfNombre = new TextField ("Nombre", 170+menuWidth, 95+bannerHeight, 305, 45);
  tfApellidos = new TextField ("Apellidos", 500+menuWidth, 95+bannerHeight, 535, 45);
  tfDNI = new TextField ("DNI", 695+menuWidth, 165+bannerHeight, 340, 45);
  tfCalle = new TextField ("Calle", 148+menuWidth, 235+bannerHeight, 147, 45);
  tfNumero = new TextField ("Nº", 313+menuWidth, 235+bannerHeight, 89, 45);
  tfPiso = new TextField ("Piso", 417+menuWidth, 235+bannerHeight, 89, 45);
  tfLocalidad = new TextField ("Localidad", 521+menuWidth, 235+bannerHeight, 198, 45);
  tfProvincia = new TextField ("Provincia", 735+menuWidth, 235+bannerHeight, 301, 45);
  tfTelefono = new TextField ("Teléfono", 148+menuWidth, 297+bannerHeight, 255, 45);
  tfCorreoElectronico = new TextField ("Correo Electrónico", 615+menuWidth, 297+bannerHeight, 420, 45);
  tfBanco = new TextField ("Banco", 235+menuWidth, 405+bannerHeight, 800, 45);
  tfTitular= new TextField ("Titular", 235+menuWidth, 462+bannerHeight, 380, 45);
  tfDNITitular = new TextField ("DNI del titular", 649+menuWidth, 462+bannerHeight, 386, 45);
  tfIBAN = new TextField ("IBAN", 40+menuWidth, 522+bannerHeight, 165, 45);
  tfEntidad = new TextField ("Entidad", 225+menuWidth, 522+bannerHeight, 100, 45);
  tfOficina = new TextField ("Oficina", 341+menuWidth, 522+bannerHeight, 100, 45);
  tfDigitoControl = new TextField ("Dígito Control", 460+menuWidth, 522+bannerHeight, 202, 45);
  tfNumeroCuenta = new TextField ("Número de cuenta", 677+menuWidth, 522+bannerHeight, 357, 45);
  tfTitulo = new TextField ("Titulo", 230, 350, 1020, 40);
  tfCantidad = new TextField ("Cantidad", 780, 490, 465, 40);
}

void displayInicioSesiontf() {
  userText.display();
  passText.display();
}

void displaytfNuevoHermano() {
  tfNombre.display();
  tfApellidos.display();
  tfDNI.display();
  tfCalle.display();
  tfNumero.display();
  tfPiso.display();
  tfLocalidad.display();
  tfProvincia.display();
  tfTelefono.display();
  tfCorreoElectronico.display();
  tfBanco.display();
  tfTitular.display();
  tfDNITitular.display();
  tfIBAN.display();
  tfEntidad.display();
  tfOficina.display();
  tfDigitoControl.display();
  tfNumeroCuenta.display();
}

//TextInfo
TextInfo tiNombre, tiApellidos, tiDNI, tiCalle, tiFechaNacimiento, tiFechaAlta, tiNumero, tiPiso, tiLocalidad, tiProvincia, tiTelefono, tiCorreoElectronico;
TextInfo tiBanco, tiTitular, tiDNITitular, tiIBAN, tiEntidad, tiOficina, tiDigitoControl, tiNumeroCuenta, tiFechaNacimientoAñadir;

void initTextInfo() {
  pushMatrix();
  tiNombre = new TextInfo ("Nombre", 170, 95, 305, 45);
  tiApellidos = new TextInfo ("Apellidos", 500, 95, 535, 45);
  tiDNI = new TextInfo ("DNI", 695, 165, 340, 45);
  tiCalle = new TextInfo ("Calle", 148, 235, 147, 45);
  tiNumero = new TextInfo ("Nº", 313, 235, 89, 45);
  tiPiso = new TextInfo ("Piso", 417, 235, 89, 45);
  tiLocalidad = new TextInfo ("Localidad", 521, 235, 198, 45);
  tiProvincia = new TextInfo ("Provincia", 735, 235, 301, 45);
  tiTelefono = new TextInfo ("Teléfono", 148, 297, 255, 45);
  tiCorreoElectronico = new TextInfo ("Correo Electrónico", 615, 297, 420, 45);
  tiBanco = new TextInfo ("Banco", 235, 405, 800, 45);
  tiTitular= new TextInfo ("Titular", 235, 462, 380, 45);
  tiDNITitular = new TextInfo ("DNI del titular", 649, 462, 386, 45);
  tiIBAN = new TextInfo ("IBAN", 40, 522, 165, 45);
  tiEntidad = new TextInfo ("Entidad", 225, 522, 100, 45);
  tiOficina = new TextInfo ("Oficina", 341, 522, 100, 45);
  tiDigitoControl = new TextInfo ("Dígito Control", 460, 522, 202, 45);
  tiNumeroCuenta = new TextInfo ("Número de cuenta", 677, 522, 357, 45);
  tiFechaNacimiento = new TextInfo("Fecha Nacimiento", 380, 165, 300, 45);
  tiFechaAlta = new TextInfo("Fecha Alta", 770, 608, 268, 45);
  tiFechaNacimientoAñadir = new TextInfo(dataCalendari, 680, 165+bannerHeight, 200, 45);
  popMatrix();
}


void displayDetalleHermano() {

  tiNombre.display();
  tiApellidos.display();
  tiDNI.display();
  tiCalle.display();
  tiNumero.display();
  tiPiso.display();
  tiLocalidad.display();
  tiProvincia.display();
  tiTelefono.display();
  tiCorreoElectronico.display();
  tiBanco.display();
  tiTitular.display();
  tiDNITitular.display();
  tiIBAN.display();
  tiEntidad.display();
  tiOficina.display();
  tiDigitoControl.display();
  tiNumeroCuenta.display();
  tiFechaNacimiento.display();
  tiFechaAlta.display();
}

//ImgTextButton

ImgTextButton[] imgtextbuttons;
ImgTextButton itbCenso, itbContabilidad, itbArchivo, itbAvisos, itbEnlaces, itbPerfilPersonal;

void initImgTextButton() {
  imgtextbuttons = new ImgTextButton[6];
  imgtextbuttons[0] = new ImgTextButton(getIconCenso(), "Censo", 0, primerIconY, iconWidth, iconHeight);
  imgtextbuttons[1] = new ImgTextButton(getIconContabilidad(), "Contabilidad", 0, segundoIconY, iconWidth, iconHeight);
  imgtextbuttons[2] = new ImgTextButton(getIconArchivo(), "Archivo", 0, tercerIconY, iconWidth, iconHeight);
  imgtextbuttons[3] = new ImgTextButton(getIconAvisos(), "Avisos y alertas", 0, cuartoIconY, iconWidth, iconHeight );
  imgtextbuttons[4] = new ImgTextButton(getIconEnlaces(), "Enlaces", 0, quintoIconY, iconWidth, iconHeight);
  imgtextbuttons[5] = new ImgTextButton(getIconCenso(), "Perfil Personal", 0, primerIconY, iconWidth, iconHeight);

  itbCenso = imgtextbuttons[0];
  itbContabilidad = imgtextbuttons[1];
  itbArchivo = imgtextbuttons[2];
  itbAvisos = imgtextbuttons[3];
  itbEnlaces = imgtextbuttons[4];
  itbPerfilPersonal = imgtextbuttons[5];
}

// Activar los botones del menú
void enableButtonsMenu() {
  if (admin == true) {
    itbCenso.setEnabled(true);
    itbPerfilPersonal.setEnabled(false);
  } else {
    itbCenso.setEnabled(false);
    itbPerfilPersonal.setEnabled(true);
  }
  itbContabilidad.setEnabled(true);
  itbArchivo.setEnabled(true);
  itbAvisos.setEnabled(true);
  itbEnlaces.setEnabled(true);
  bPrincipal.setEnabled(true);
}

void displayButtonsMenu() {
  if (admin == true) {
    itbCenso.display();
  } else {
    itbPerfilPersonal.display();
  }
  itbContabilidad.display();
  itbArchivo.display();
  itbAvisos.display();
  itbEnlaces.display();
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

  // Configuración de datis (textos, valores, colores)
  gastos.setTexts(textosbd);
  gastos.setValues(valuesbd);
  gastos.setColors(colorsbd);
}

//ShowImage

ShowImage cristo;

// Nombre de las imágenes
String[] noms = {"cristo1.jpg", "cristo2.jpeg", "cristo3.jpeg",
  "cristo4.jpeg"};

void initShowImage() {

  cristo = new ShowImage(35, 70, 485, 575);
  cristo.setImages(noms);
}

//Titulo

Titulo titIngresos, titGastos, titConcepto, titDetallePersonal, titDetallePersonalUser;

void initTitulo() {
  titIngresos = new Titulo("Ingresos", 250, 170, 800, 40);
  titGastos = new Titulo("Gastos", 250, 470, 800, 40);
  titConcepto = new Titulo ("Concepto", 230, 275, 610, 40);
  titDetallePersonal = new Titulo ("Detalle personal", 20, 25, 605, 35);
  titDetallePersonalUser = new Titulo("Detalle personal", 20, 25, 1080-20-10, 35);
}

//Select

Select sTipoConcepto;


String[] selectValuesConcepto = {"I.1", "I.2", "I.3", "G.1", "G.2", "G.3", "G.4", "G.5", "G.6", "G.7", "G.8", "G.9", "G.10", "G.11", "G.12", "G.13", "G.14", "G.15", "G.16", "G.17", "G.18", };

// Dimensions dels botons
float selectConceptoW = 465;
float selectConceptoH = 40;

void initSelect() {
  sTipoConcepto = new Select(selectValuesConcepto, 780, 420, selectConceptoW, selectConceptoH);
}

//SelectTable

SelectTable stCenso, stGastos, stGastosPresupuesto;

int filasCenso = 6, columnasCenso = 5;

String[] headersCenso = {"Nº", "Nombre", "Apellidos", "Alta", "Estado de cobro"};

float[] colWidthsCenso = {10, 20, 40, 10, 20};

int[] maxCharsCenso = {10, 10, 20, 10, 10};

// Dades de la taula
String[][] infoCenso = {
  {"1", "Pere", "Soler Miralles De las Mercedes", "33", "Home"},
  {"2", "Maria", "Garcia Lopez", "25", "Dona"},
  {"3", "Joan Jose Maria", "Melis Cabrer", "47", "Home"},
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

int filasGastos = 4, columnasGastos = 3;

String[] headersGastos = {"Código", "Concepto", "Cantidad"};

float[] colWidthsGastos = {20, 50, 30};

int[] maxCharsGastos = {10, 35, 15};

// Dades de la taula
String[][] infoGastos = {
  {"G.1", "Servicios y mantenimiento ermita", "1200.00€"},
  {"G.2", "Aportación radio Santa Maria", "1200.00€"},
  {"G.3", "Caridad", "1200.00€"},
  {"G.4", "Misas hermanos difuntos", "1200.00€"},
  {"G.5", "Mantenimiento y adquisición patrimonio", "1200.00€"},
  {"G.6", "Fuegos artificiales", "1200.00€"},
  {"G.7", "Bandas de música y coros", "1200.00€"},
  {"G.8", "Flores", "1200.00€"},
  {"G.9", "Programa de fiestas y más imprenta", "1200.00€"},
  {"G.10", "Carne cena de hermandad", "1200.00€"},
  {"G.11", "Luz y sonido miserere", "1200.00€"},
  {"G.12", "Limonada y migas", "1200.00€"},
  {"G.13", "Gastos para organización de otros actos", "1200.00€"},
  {"G.14", "Premio carrozas y colaboraciones civiles", "1200.00€"},
  {"G.15", "Gastos Bancarios", "1200.00€"},
  {"G.16", "Alojamineto página web", "1200.00€"},
  {"G.17", "Varios y gastos extraordinarios", "1200.00€"},
  {"G.18", "Adquisición artículos devoción", "1200.00€"},
};

String[][] infoGastosPresupuesto = {
  {"G.1", "Servicios y mantenimiento ermita", "1200.00€"},
  {"G.2", "Aportación radio Santa Maria", "1200.00€"},
  {"G.3", "Caridad", "1200.00€"},
  {"G.4", "Misas hermanos difuntos", "1200.00€"},
  {"G.5", "Mantenimiento y adquisición patrimonio", "1200.00€"},
  {"G.6", "Fuegos artificiales", "1200.00€"},
  {"G.7", "Bandas de música y coros", "1200.00€"},
  {"G.8", "Flores", "1200.00€"},
  {"G.9", "Programa de fiestas y más imprenta", "1200.00€"},
  {"G.10", "Carne cena de hermandad", "1200.00€"},
  {"G.11", "Luz y sonido miserere", "1200.00€"},
  {"G.12", "Limonada y migas", "1200.00€"},
  {"G.13", "Gastos para organización de otros actos", "1200.00€"},
  {"G.14", "Premio carrozas y colaboraciones civiles", "1200.00€"},
  {"G.15", "Gastos Bancarios", "1200.00€"},
  {"G.16", "Alojamineto página web", "1200.00€"},
  {"G.17", "Varios y gastos extraordinarios", "1200.00€"},
  {"G.18", "Adquisición artículos devoción", "1200.00€"},
};
SelectTable stBalanceIngresos;

int filasBalanceIngresos = 4, columnasBalanceIngresos=3;

String[] headersBalance = {"Código", "Concepto", "Cantidad"};

// Amplades de les columnes
float[] colWidthsBalance = {20, 50, 30};

// Dades de la taula
String[][] infoBalanceIngresos = {
  {"I.1", "Donativos", "3907,35€"},
  {"I.1", "Cuotas hermanos", "3907,35€"},
  {"I.1", "Subvención ayuntamiento", "3907,35€"},
};

int[] maxCharsBalanceIngresos = {10, 35, 15};

void initSelectTable() {
  stBalanceIngresos = new SelectTable(filasBalanceIngresos, columnasBalanceIngresos, 250, 210, 800, 240);
  stBalanceIngresos.setHeaders(headersBalance);
  stBalanceIngresos.setData(infoBalanceIngresos);
  stBalanceIngresos.setColumnWidths(colWidthsBalance);
  stBalanceIngresos.setColumnMaxChars(maxCharsBalanceIngresos);
  stGastos = new SelectTable(filasGastos, columnasGastos, 250, 510, 800, 240);
  stGastos.setHeaders(headersGastos);
  stGastos.setData(infoGastos);
  stGastos.setColumnWidths(colWidthsGastos);
  stGastos.setColumnMaxChars(maxCharsGastos);
  stCenso = new SelectTable(filasCenso, columnasCenso, 20+menuWidth, 285, 1280-menuWidth-40, 410);
  stCenso.setHeaders(headersCenso);
  stCenso.setData(infoCenso);
  stCenso.setColumnWidths(colWidthsCenso);
  stCenso.setColumnMaxChars(maxCharsCenso);
  stGastosPresupuesto = new SelectTable(filasGastos, columnasGastos, 250, 510, 800, 240);
  stGastosPresupuesto.setHeaders(headersGastos);
  stGastosPresupuesto.setData(infoGastosPresupuesto);
  stGastosPresupuesto.setColumnWidths(colWidthsGastos);
  stGastosPresupuesto.setColumnMaxChars(maxCharsGastos);
}

//CalendariPlus

CalendariPlus cpFechaNacimiento, cpFechaAlta;
String dataCalendari="";
String dataCalendariAlta="";

void initCalendariPlus() {
  cpFechaNacimiento = new CalendariPlus(680, 300, 600, 380);
  cpFechaAlta = new CalendariPlus(680, 300, 600, 380);
}

void displaycpFechaNacimiento() {
  pushStyle();
  // Rectangle
  fill(255);
  rect(680, 165+bannerHeight, 200, 45);

  // Text amb data seleccionada
  fill(0);
  textAlign(LEFT);
  textSize(24);
  text(dataCalendari, 690, 165+bannerHeight+30);
  popStyle();
  cpFechaNacimiento.display();
  bCalendario.display();
}

void displaycpFechaAlta() {
  pushStyle();
  // Rectangle
  fill(255);
  rect(1080, 605+bannerHeight, 180, 45);

  // Text amb data seleccionada
  fill(0);
  textAlign(LEFT);
  textSize(24);
  text(dataCalendariAlta, 1082, 605+bannerHeight+30); //SE PINTA EL MATEIX QUE A dataCalendari!!
  popStyle();
  cpFechaAlta.display();
  bCalendarioAlta.display();
}
