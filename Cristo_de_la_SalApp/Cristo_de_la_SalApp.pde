//enumeración de las pantallas de la aplicación
enum PANTALLA {
  INICIO, PRINCIPAL, CENSO, CONTABILIDAD, ARCHIVO, AVISOS, ENLACES
};
///Pantalla actual
PANTALLA pantalla =PANTALLA.INICIO;

void setup() {
  fullScreen();
  setColors();
  setFonts();
  setMedias();
  setGUI();
}

void draw() {
  
  // Dibuja la pantalla correspondiente
  switch(pantalla) {
  case INICIO:
    dibujaPantallaInicio();
    break;
  case PRINCIPAL:
    dibujaPantallaPrincipal();
    break;
  case CENSO:
    dibujaPantallaCenso();
    break;
  case CONTABILIDAD:
    dibujaPantallaContabilidad();
    break;
  case ARCHIVO:
    dibujaPantallaArchivo();
    break;
  case AVISOS:
    dibujaPantallaAvisos();
    break;
  case ENLACES:
    dibujaPantallaEnlaces();
    break;
  }
  String infoPantalla = pantalla.ordinal()+" ) "+pantalla.name();
  fill(0);
  text(infoPantalla, width/2, height/2);  // Número i nom de la Pantalla
  text("X= "+mouseX+", Y= "+mouseY,width/2, height/2 +20);

  updateCursor();   // Modifica la apariencia del cursor
}

// En caso de apretar el ratón
void mousePressed() {

  if (bInicioSesion.mouseOverButton() && bInicioSesion.enabled) {
    pantalla = PANTALLA.PRINCIPAL;
  } else if (bCenso.mouseOverButton() && bCenso.enabled) {
    pantalla = PANTALLA.CENSO;
  } else if (bContabilidad.mouseOverButton() && bContabilidad.enabled) {
    pantalla = PANTALLA.CONTABILIDAD;
  } else if (bArchivo.mouseOverButton() && bArchivo.enabled) {
    pantalla = PANTALLA.ARCHIVO;
  } else if (bAvisos.mouseOverButton() && bAvisos.enabled) {
    pantalla = PANTALLA.AVISOS;
  } else if (bEnlaces.mouseOverButton() && bEnlaces.enabled) {
    pantalla = PANTALLA.ENLACES;
  } else if (bPrincipal.mouseOverButton() && bPrincipal.enabled) {
    pantalla = PANTALLA.PRINCIPAL;
  }
}


// Modifica el cursor
void updateCursor() {
  if ((bPrincipal.mouseOverButton() && bPrincipal.enabled)||
    (bCenso.mouseOverButton() && bCenso.enabled)||
    (bContabilidad.mouseOverButton() && bContabilidad.enabled)||
    (bArchivo.mouseOverButton() && bArchivo.enabled)||
    (bAvisos.mouseOverButton() && bAvisos.enabled)||
    (bEnlaces.mouseOverButton() && bEnlaces.enabled)||
    (bInicioSesion.mouseOverButton() && bInicioSesion.enabled)||
    (bAñadir.mouseOverButton() && bAñadir.enabled)||
    (bModificar.mouseOverButton() && bModificar.enabled)||
    (bFiltrar.mouseOverButton() && bFiltrar.enabled)) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  } 
}
