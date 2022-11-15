//enumeración de las pantallas de la aplicación
enum PANTALLA {
  INICIO, PRINCIPAL, CENSO, CONTABILIDAD, ARCHIVO, AVISOS, ENLACES
};

///Pantalla actual
PANTALLA pantalla =PANTALLA.INICIO;

boolean logged= false;

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
  textFont(getFontAt(4));
  text(infoPantalla, width/2, height/2);  // Número i nom de la Pantalla
  text("X= "+mouseX+", Y= "+mouseY, width/2, height/2 +20);

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
  userText.isPressed();
  passText.isPressed();
  buscar.isPressed();
}

// Modifica el cursor
void updateCursor() {

  boolean mouseOnOneButton = false;

  for (int i=0; i<buttons.length; i++) {
    if (buttons[i].mouseOverButton() && buttons[i].enabled) {
      mouseOnOneButton = true;
    }
  }
  if (mouseOnOneButton) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}

// Quan pitjam tecla
void keyPressed() {
  userText.keyPressed(key, (int)keyCode);
  passText.keyPressed(key, (int)keyCode);
  buscar.keyPressed(key, (int)keyCode);
  comprovaLogin();
}

// Comprova si el login és correcte
boolean comprovaLogin() {
   if ( userText.text.equals("admin") && 
        passText.text.equals("1234")) {
      return true;
   } else {
      return false;
   }
}
