//enumeración de las pantallas de la aplicación
int lastKeyCodePressed;

enum PANTALLA {
  INICIO, PRINCIPAL, CENSO, CONTABILIDAD, ARCHIVO, AVISOS, ENLACES, CENSO_DETALLE, CENSO_NUEVOHERMANO, CONTABILIDAD_BALANCE, CONTABILIDAD_PRESUPUESTO, CONTABILIDAD_AÑADIRCONCEPTO
};

///Pantalla actual
PANTALLA pantalla =PANTALLA.CONTABILIDAD_AÑADIRCONCEPTO;

boolean logged= false;

String userName = "admin";
float estadoDeCuentas = 27500.50;


void setup() {
  size(1280, 800);
  //fullScreen();
  setColors();
  setFonts();
  setMedias();
  setGUI();

  desktop = Desktop.getDesktop();
}

void draw() {
  //Establece una configuración por defecto
  textAlign(LEFT);
  fill(0);
  textFont(getFontAt(4));
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
  case CONTABILIDAD_BALANCE:
    dibujaPantallaContabilidadBalance();
    break;
  case CONTABILIDAD_PRESUPUESTO:
    dibujaPantallaContabilidadPresupuesto();
    break;
  case CONTABILIDAD_AÑADIRCONCEPTO:
    dibujaPantallaContabilidadAñadirConcepto();
    break;
  }
  //String infoPantalla = pantalla.ordinal()+" ) "+pantalla.name();
  //fill(0);
  
  //text(infoPantalla, width/2, height/2);  // Número i nom de la Pantalla
  //text("X= "+mouseX+", Y= "+mouseY, width/2, height/2 +20);
  

  updateCursor();   // Modifica la apariencia del cursor
}

// En caso de apretar el ratón
void mousePressed() {
  if (bNextCenso.mouseOverButton() && bNextCenso.enabled) {
    ptCenso.nextPage();
  } else if (bPrevCenso.mouseOverButton() && bPrevCenso.enabled) {
    ptCenso.prevPage();
  } else if (bNextGastos.mouseOverButton() && bNextGastos.enabled && pantalla == PANTALLA.CONTABILIDAD_BALANCE) {
    ptGastos.nextPage();
  } else if (bPrevGastos.mouseOverButton() && bPrevGastos.enabled && pantalla == PANTALLA.CONTABILIDAD_BALANCE) {
    ptGastos.prevPage();
  } else if (bNextGastos.mouseOverButton() && bNextGastos.enabled && pantalla == PANTALLA.CONTABILIDAD_PRESUPUESTO) {
    ptGastosPresupuesto.nextPage();
  } else if (bPrevGastos.mouseOverButton() && bPrevGastos.enabled && pantalla == PANTALLA.CONTABILIDAD_PRESUPUESTO) {
    ptGastosPresupuesto.prevPage();
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
  } else if (bBalance.mouseOverButton() && bBalance.enabled) {
    pantalla = PANTALLA.CONTABILIDAD_BALANCE;
  } else if (bPresupuesto.mouseOverButton() && bPresupuesto.enabled) {
    pantalla = PANTALLA.CONTABILIDAD_PRESUPUESTO;
  } else if (bFacebook.mouseOverButton() && bFacebook.enabled) {
    openWebPage("https://www.facebook.com/stmocristodelasalabargas/");
  } else if (bTwitter.mouseOverButton() && bTwitter.enabled) {
    openWebPage("https://twitter.com/cristo_sala");
  } else if (bInstagram.mouseOverButton() && bInstagram.enabled) {
    openWebPage("https://www.instagram.com/hermandadcristodelasala/?hl=es");
  } else if (bYoutube.mouseOverButton() && bYoutube.enabled) {
    openWebPage("https://www.youtube.com/channel/UCri0gUrGJPZ23ZlmgmGa9Yg");
  } else if (bArzobispado.mouseOverButton() && bArzobispado.enabled) {
    openWebPage("https://www.architoledo.org/");
  } else if (bAyuntamiento.mouseOverButton() && bAyuntamiento.enabled) {
    openWebPage("https://www.bargas.es/");
  } else if (bWebCofrade.mouseOverButton() && bWebCofrade.enabled) {
    openWebPage("http://www.semanasantatoledo.com/");
  } else if (bOtrasHermandades.mouseOverButton() && bOtrasHermandades.enabled) {
    openWebPage("https://www.humildadtoledo.com/enlaces-de-interes");
  } else if (bAñadir.mouseOverButton() && bAñadir.enabled && pantalla == PANTALLA.CENSO) {
    pantalla = PANTALLA.CENSO_NUEVOHERMANO;
  } else if (bAñadirConcepto.mouseOverButton() && bAñadirConcepto.enabled) {
    pantalla = PANTALLA.CONTABILIDAD_AÑADIRCONCEPTO;
  } else if (bAceptarConcepto.mouseOverButton() && bAceptarConcepto.enabled) {
    pantalla = PANTALLA.CONTABILIDAD_BALANCE;
  }
  userText.isPressed();
  passText.isPressed();
  buscar.isPressed();
  tfNombre.isPressed();
  tfApellidos.isPressed();
  tfDNI.isPressed();
  tfCalle.isPressed();
  tfNumero.isPressed();
  tfPiso.isPressed();
  tfLocalidad.isPressed();
  tfProvincia.isPressed();
  tfTelefono.isPressed();
  tfCorreoElectronico.isPressed();
  tfBanco.isPressed();
  tfTitular.isPressed();
  tfDNITitular.isPressed();
  tfIBAN.isPressed();
  tfEntidad.isPressed();
  tfOficina.isPressed();
  tfDigitoControl.isPressed();
  tfNumeroCuenta.isPressed();
  tfTitulo.isPressed();
  tfCantidad.isPressed();
  cEventos.checkButtons();

  if (sTipoConcepto.mouseOverSelect() && sTipoConcepto.enabled) {
    if (!sTipoConcepto.collapsed) {
      sTipoConcepto.update();      // Actualitzar valor
    }
    sTipoConcepto.toggle();        // Plegar o desplegar
  }
}

// Modifica el cursor
void updateCursor() {

  boolean mouseOnOneButton = false;

  for (int i=0; i<buttons.length; i++) {
    if (buttons[i].mouseOverButton() && buttons[i].enabled) {
      mouseOnOneButton = true;
    }
  }
  for (int i=0; i<imgtextbuttons.length; i++) {
    if (imgtextbuttons[i].mouseOverButton() && imgtextbuttons[i].enabled) {
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
  tfNombre.keyPressed(key, (int)keyCode);
  tfApellidos.keyPressed(key, (int)keyCode);
  tfDNI.keyPressed(key, (int)keyCode);
  tfCalle.keyPressed(key, (int)keyCode);
  tfNumero.keyPressed(key, (int)keyCode);
  tfPiso.keyPressed(key, (int)keyCode);
  tfLocalidad.keyPressed(key, (int)keyCode);
  tfProvincia.keyPressed(key, (int)keyCode);
  tfTelefono.keyPressed(key, (int)keyCode);
  tfCorreoElectronico.keyPressed(key, (int)keyCode);
  tfBanco.keyPressed(key, (int)keyCode);
  tfTitular.keyPressed(key, (int)keyCode);
  tfDNITitular.keyPressed(key, (int)keyCode);
  tfIBAN.keyPressed(key, (int)keyCode);
  tfEntidad.keyPressed(key, (int)keyCode);
  tfOficina.keyPressed(key, (int)keyCode);
  tfDigitoControl.keyPressed(key, (int)keyCode);
  tfNumeroCuenta.keyPressed(key, (int)keyCode);
  tfTitulo.keyPressed(key, (int)keyCode);
  comprovaLogin();
 lastKeyCodePressed= (int)keyCode;
  // Anar un mes enrere
  if (keyCode==LEFT) {
    cEventos.prevMonth();
    println("PREV MONTH");
  }
  // Anar un mes endavant
  else if (keyCode==RIGHT) {
    cEventos.nextMonth();
    println("PREV MONTH");
  }
  println(lastKeyCodePressed);
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
