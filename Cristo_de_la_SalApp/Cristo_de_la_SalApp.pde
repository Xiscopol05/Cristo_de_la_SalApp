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
  
  //Creación de los botones
  bPrincipal = new Button("Iniciar sesión", 320+(marcoWidth/2)-75, 600, 150, 30);
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

  updateCursor();   // Modifica l'aparença del cursor
}

// En cas de pitjar el ratolí
void mousePressed() {

  if (bPrincipal.mouseOverButton() && bPrincipal.enabled) {
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
  }
}


// Modifica el cursor
void updateCursor() {

  if ((bPrincipal.mouseOverButton() && bPrincipal.enabled)||
    (bCenso.mouseOverButton() && bCenso.enabled)||
    (bContabilidad.mouseOverButton() && bContabilidad.enabled)||
    (bArchivo.mouseOverButton() && bArchivo.enabled)||
    (bAvisos.mouseOverButton() && bAvisos.enabled)||
    (bEnlaces.mouseOverButton() && bEnlaces.enabled)) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
