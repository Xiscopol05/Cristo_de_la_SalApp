//enumeración de las pantallas de la aplicación

enum PANTALLA {
  INICIO, PRINCIPAL, CENSO, CONTABILIDAD, ARCHIVO, AVISOS, ENLACES, CENSO_DETALLE, CENSO_NUEVOHERMANO
};

///Pantalla actual
PANTALLA pantalla =PANTALLA.AVISOS;

boolean logged= false;

String userName = "admin";


void setup() {
  size(1280, 800);
  setColors();
  setFonts();
  setMedias();
  setGUI();

  desktop = Desktop.getDesktop();
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
  case CENSO_DETALLE:
    dibujaPantallaCensoDetalle();
    break;
  case CENSO_NUEVOHERMANO:
    dibujaPantallaCensoNuevoHermano();
    break;
  }
  String infoPantalla = pantalla.ordinal()+" ) "+pantalla.name();
  fill(0);
  textFont(getFontAt(4));
  //text(infoPantalla, width/2, height/2);  // Número i nom de la Pantalla
  text("X= "+mouseX+", Y= "+mouseY, width/2, height/2 +20);

  updateCursor();   // Modifica la apariencia del cursor
}

// En caso de apretar el ratón
void mousePressed() {
  if (bNext.mouseOverButton() && bNext.enabled) {
    pt.nextPage();
  } else if (bPrev.mouseOverButton() && bPrev.enabled) {
    pt.prevPage();
  } else if (bInicioSesion.mouseOverButton() && bInicioSesion.enabled) {
    pantalla = PANTALLA.PRINCIPAL;
  } else if (itbCenso.mouseOverButton() && itbCenso.enabled) {
    pantalla = PANTALLA.CENSO;
  } else if (itbContabilidad.mouseOverButton() && itbContabilidad.enabled) {
    pantalla = PANTALLA.CONTABILIDAD;
  } else if (itbArchivo.mouseOverButton() && itbArchivo.enabled) {
    pantalla = PANTALLA.ARCHIVO;
  } else if (itbAvisos.mouseOverButton() && itbAvisos.enabled) {
    pantalla = PANTALLA.AVISOS;
  } else if (itbEnlaces.mouseOverButton() && itbEnlaces.enabled) {
    pantalla = PANTALLA.ENLACES;
  } else if (bPrincipal.mouseOverButton() && bPrincipal.enabled) {
    pantalla = PANTALLA.PRINCIPAL;
  } else if (bFacebook.mouseOverButton() && bFacebook.enabled) {
    openWebPage("https://www.facebook.com/stmocristodelasalabargas/");
  } else if (bTwitter.mouseOverButton() && bTwitter.enabled) {
    openWebPage("https://twitter.com/cristo_sala");
  }else if (bInstagram.mouseOverButton() && bInstagram.enabled) {
    openWebPage("https://www.instagram.com/hermandadcristodelasala/?hl=es");
  }else if (bYoutube.mouseOverButton() && bYoutube.enabled) {
    openWebPage("https://www.youtube.com/channel/UCri0gUrGJPZ23ZlmgmGa9Yg");
  }else if (bArzobispado.mouseOverButton() && bArzobispado.enabled) {
    openWebPage("https://www.architoledo.org/");
  }else if (bAyuntamiento.mouseOverButton() && bAyuntamiento.enabled) {
    openWebPage("https://www.bargas.es/");
  }else if (bWebCofrade.mouseOverButton() && bWebCofrade.enabled) {
    openWebPage("http://www.semanasantatoledo.com/");
  }else if (bOtrasHermandades.mouseOverButton() && bOtrasHermandades.enabled) {
    openWebPage("https://www.humildadtoledo.com/enlaces-de-interes");
  }
  userText.isPressed();
  passText.isPressed();
  buscar.isPressed();
  cEventos.checkButtons();
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
  if (keyCode==LEFT) {
    pt.prevPage();
  } else if (keyCode==RIGHT) {
    pt.nextPage();
  }
   // Anar un mes enrere
  if(keyCode==LEFT){
    cEventos.prevMonth();
    println("PREV MONTH");
  }
  // Anar un mes endavant
  else if(keyCode==RIGHT){
    cEventos.nextMonth();
    println("PREV MONTH");
  }
}


// Comprova si el login és correcte
boolean comprovaLogin() {
  if ( userText.text.equals(userName) &&
    passText.text.equals("1234")) {
    return true;
  } else {
    return false;
  }
}
