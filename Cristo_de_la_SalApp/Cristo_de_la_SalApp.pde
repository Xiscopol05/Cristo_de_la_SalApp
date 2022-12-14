//enumeración de las pantallas de la aplicación
enum PANTALLA {
  INICIO, PRINCIPAL, CENSO, CONTABILIDAD, ARCHIVO, AVISOS, ENLACES, CENSO_DETALLE, CENSO_NUEVOHERMANO,
    CONTABILIDAD_BALANCE, CONTABILIDAD_PRESUPUESTO, CONTABILIDAD_AÑADIRCONCEPTO, CONTABILIDAD_DETALLEBALANCE,
    CONTABILIDAD_DETALLEMOVIMIENTO, ARCHIVO_NUEVO, ARCHIVO_DETALLE, AVISOS_NUEVOAVISO, AVISOS_NUEVOEVENTO;
};

///Pantalla actual
PANTALLA pantalla =PANTALLA.CONTABILIDAD_DETALLEBALANCE;

boolean logged= false;

boolean admin= true;

String userNameAdmin = "admin";
String userNameUser = "user";

float estadoDeCuentas = 27500.50;
int lastKeyCodePressed;


void setup() {
  size(1280, 800);
  setColors();
  setFonts();
  setMedias();
  setGUI();

  desktop = Desktop.getDesktop();
}

void draw() {
  println(pantalla);
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
  case CONTABILIDAD_DETALLEBALANCE:
    dibujaPantallaContabilidadDetalleBalance();
    break;
  case CONTABILIDAD_DETALLEMOVIMIENTO:
    dibujaPantallaContabilidadDetalleMovimiento();
    break;
  case ARCHIVO_NUEVO:
    dibujaPantallaArchivoNuevo();
    break;
  case ARCHIVO_DETALLE:
    dibujaPantallaArchivoDetalle();
    break;
  case AVISOS_NUEVOAVISO:
    dibujaPantallaAvisosNuevoAviso();
    break;
  case AVISOS_NUEVOEVENTO:
    dibujaPantallaAvisosNuevoEvento();
    break;
  }

  updateCursor();   // Modifica la apariencia del cursor

  if ( userText.text.equals(userNameAdmin) &&
    passText.text.equals("1234")) {
    admin = true;
  } else if (( userText.text.equals(userNameUser) &&
    passText.text.equals("1234"))) {
    admin = false;
  }
}

// En caso de apretar el ratón
void mousePressed() {
  if (bNextCenso.mouseOverButton() && bNextCenso.enabled) {
    stCenso.nextPage();
  } else if (bPrevCenso.mouseOverButton() && bPrevCenso.enabled) {
    stCenso.prevPage();
  } else if (bNextGastos.mouseOverButton() && bNextGastos.enabled && pantalla == PANTALLA.CONTABILIDAD_BALANCE) {
    stGastos.nextPage();
  } else if (bPrevGastos.mouseOverButton() && bPrevGastos.enabled && pantalla == PANTALLA.CONTABILIDAD_BALANCE) {
    stGastos.prevPage();
  } else if (bNextGastos.mouseOverButton() && bNextGastos.enabled && pantalla == PANTALLA.CONTABILIDAD_PRESUPUESTO) {
    stGastosPresupuesto.nextPage();
  } else if (bPrevGastos.mouseOverButton() && bPrevGastos.enabled && pantalla == PANTALLA.CONTABILIDAD_PRESUPUESTO) {
    stGastosPresupuesto.prevPage();
  } else if (bPrevDetalle.mouseOverButton() && bPrevDetalle.enabled) {
    stDetalleItem.prevPage();
  } else if (bNextDetalle.mouseOverButton() && bNextDetalle.enabled) {
    stDetalleItem.nextPage();
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
  } else if (bAñadirConcepto.mouseOverButton() && bAñadirConcepto.enabled && admin == true) {
    pantalla = PANTALLA.CONTABILIDAD_AÑADIRCONCEPTO;
  } else if (bAceptarConcepto.mouseOverButton() && bAceptarConcepto.enabled) {
    pantalla = PANTALLA.CONTABILIDAD_BALANCE;
  } else if (bDetalle.mouseOverButton() && bDetalle.enabled && pantalla == PANTALLA.CENSO) {
    pantalla = PANTALLA.CENSO_DETALLE;
  } else if ( bAceptarCenso.mouseOverButton() && bAceptarCenso.enabled && pantalla == PANTALLA.CENSO_NUEVOHERMANO) {
    pantalla = PANTALLA.CENSO;
  } else if (itbPerfilPersonal.mouseOverButton() && itbPerfilPersonal.enabled) {
    pantalla = PANTALLA.CENSO_DETALLE;
  } else if (bDetalleBalance.mouseOverButton() && bDetalleBalance.enabled) {
    pantalla = PANTALLA.CONTABILIDAD_DETALLEBALANCE;
  } else if (bFicha.mouseOverButton() && bFicha.enabled && pantalla == PANTALLA.CENSO_NUEVOHERMANO) {
    selectInput("Selecciona un fitxer ...", "fileSelected");
  } else if (bAñadirRecibo.mouseOverButton() && bAñadirRecibo.enabled && pantalla == PANTALLA.CONTABILIDAD_AÑADIRCONCEPTO) {
    selectInput("Selecciona un fitxer ...", "fileSelected");
  } else if (bFicha.mouseOverButton() && bFicha.enabled && pantalla == PANTALLA.CENSO_DETALLE) {
    launch(ruta+titulo1); // !!!NO FUNCIONA!!!
  } else if (bDetalleConcepto.mouseOverButton() && bDetalleConcepto.enabled) {
    pantalla =  PANTALLA.CONTABILIDAD_DETALLEMOVIMIENTO;
  } else if (bPrevArchivo.mouseOverButton() && bPrevArchivo.enabled) {
    stArchivo.prevPage();
  } else if (bNextArchivo.mouseOverButton() && bNextArchivo.enabled) {
    stArchivo.nextPage();
  } else if (bAñadir.mouseOverButton() && bAñadir.enabled && pantalla == PANTALLA.ARCHIVO) {
    pantalla = PANTALLA.ARCHIVO_NUEVO;
  } else if (bDetalle.mouseOverButton() && bDetalle.enabled && pantalla == PANTALLA.ARCHIVO) {
    pantalla = PANTALLA.ARCHIVO_DETALLE;
  } else if (itbInsertarArchivo.mouseOverButton() && itbInsertarArchivo.enabled && pantalla == PANTALLA.ARCHIVO_NUEVO) {
    selectInput("Selecciona un fitxer ...", "fileSelected");
  } else if (itbInsertarArchivoAvisos.mouseOverButton() && itbInsertarArchivoAvisos.enabled) {
    selectInput("Selecciona un fitxer ...", "fileSelected");
  } else if (bAceptarArchivo.mouseOverButton() && bAceptarArchivo.enabled && pantalla == PANTALLA.ARCHIVO_NUEVO) {
    pantalla = PANTALLA.ARCHIVO;
  } else if (bAceptarAvisosAlertas.mouseOverButton() && bAceptarAvisosAlertas.enabled) {
    pantalla = PANTALLA.AVISOS;
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
  tfTituloArchivo.isPressed();
  tfTituloAviso.isPressed();
  tfTituloEvento.isPressed();
  taNuevoAviso.isPressed();
  taNuevoEvento.isPressed();
  cEventos.checkButtons();

  if (sCategoriaArchivo.mouseOverSelect() && sCategoriaArchivo.enabled) {
    if (!sCategoriaArchivo.collapsed) {
      sCategoriaArchivo.update();      // Actualitzar valor
    }
    sCategoriaArchivo.toggle();        // Plegar o desplegar
  }
  stCenso.checkSelections();
  stGastos.checkSelections();
  stGastosPresupuesto.checkSelections();
  stBalanceIngresos.checkSelections();
  stDetalleItem.checkSelections();
  stArchivo.checkSelections();


  cpFechaAlta.checkButtons();

  // Si pitja el botó, canvia la visibilitat del calendari.
  if (bCalendarioAlta.mouseOverButton()&& bCalendarioAlta.enabled) {
    cpFechaAlta.visible = !cpFechaAlta.visible;
  }

  if (cpFechaAlta.bNext.mouseOverButton()) {
    cpFechaAlta.nextMonth();
  }

  if (cpFechaAlta.bPrev.mouseOverButton()) {
    cpFechaAlta.prevMonth();
  }

  if (cpFechaAlta.bOK.mouseOverButton() && cpFechaAlta.dateSelected) {
    dataCalendariAlta = cpFechaAlta.selectedDay +"/"+ cpFechaAlta.selectedMonth + "/"+ cpFechaAlta.selectedYear;
    cpFechaAlta.visible = false;
  }


  cpFechaMovimiento.checkButtons();

  // Si pitja el botó, canvia la visibilitat del calendari.
  if (bCalendarioMovimiento.mouseOverButton()&& bCalendarioMovimiento.enabled) {
    cpFechaMovimiento.visible = !cpFechaMovimiento.visible;
  }

  if (cpFechaMovimiento.bNext.mouseOverButton()) {
    cpFechaMovimiento.nextMonth();
  }

  if (cpFechaMovimiento.bPrev.mouseOverButton()) {
    cpFechaMovimiento.prevMonth();
  }

  if (cpFechaMovimiento.bOK.mouseOverButton() && cpFechaMovimiento.dateSelected) {
    dataCalendariMovimiento = cpFechaMovimiento.selectedDay +"/"+ cpFechaMovimiento.selectedMonth + "/"+ cpFechaMovimiento.selectedYear;
    cpFechaMovimiento.visible = false;
  }
  cpFechaNacimiento.checkButtons();

  // Si pitja el botó, canvia la visibilitat del calendari.
  if (bCalendario.mouseOverButton()&& bCalendario.enabled) {
    cpFechaNacimiento.visible = !cpFechaNacimiento.visible;
  }

  if (cpFechaNacimiento.bNext.mouseOverButton()) {
    cpFechaNacimiento.nextMonth();
  }

  if (cpFechaNacimiento.bPrev.mouseOverButton()) {
    cpFechaNacimiento.prevMonth();
  }

  if (cpFechaNacimiento.bOK.mouseOverButton() && cpFechaNacimiento.dateSelected) {
    dataCalendariNacimiento= cpFechaNacimiento.selectedDay +"/"+ cpFechaNacimiento.selectedMonth + "/"+ cpFechaNacimiento.selectedYear;
    cpFechaNacimiento.visible = false;
  }
  cpFechaArchivo.checkButtons();

  // Si pitja el botó, canvia la visibilitat del calendari.
  if (bCalendarioArchivo.mouseOverButton()&& bCalendarioArchivo.enabled) {
    cpFechaArchivo.visible = !cpFechaArchivo.visible;
  }

  if (cpFechaArchivo.bNext.mouseOverButton()) {
    cpFechaArchivo.nextMonth();
  }

  if (cpFechaArchivo.bPrev.mouseOverButton()) {
    cpFechaArchivo.prevMonth();
  }

  if (cpFechaArchivo.bOK.mouseOverButton() && cpFechaArchivo.dateSelected) {
    dataCalendarioArchivo= cpFechaArchivo.selectedDay +"/"+ cpFechaArchivo.selectedMonth + "/"+ cpFechaArchivo.selectedYear;
    cpFechaArchivo.visible = false;
  }
  
  cpNuevoEvento.checkButtons();

  // Si pitja el botó, canvia la visibilitat del calendari.
  if (bCalendarioEvento.mouseOverButton()&& bCalendarioEvento.enabled) {
    cpNuevoEvento.visible = !cpNuevoEvento.visible;
  }

  if (cpNuevoEvento.bNext.mouseOverButton()) {
    cpNuevoEvento.nextMonth();
  }

  if (cpNuevoEvento.bPrev.mouseOverButton()) {
    cpNuevoEvento.prevMonth();
  }

  if (cpNuevoEvento.bOK.mouseOverButton() && cpNuevoEvento.dateSelected) {
    dataCalendarioEvento= cpNuevoEvento.selectedDay +"/"+ cpNuevoEvento.selectedMonth + "/"+ cpNuevoEvento.selectedYear;
    cpNuevoEvento.visible = false;
  }
  
  
  stlTipoConcepto.mouseOn();
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
  tfTituloArchivo.keyPressed(key, (int)keyCode);
  tfTituloAviso.keyPressed(key, (int)keyCode);
  taNuevoAviso.keyPressed(key, (int)keyCode);
  tfTituloEvento.keyPressed(key, (int)keyCode);
  taNuevoEvento.keyPressed(key, (int)keyCode);
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
  stlTipoConcepto.keyOn();
}


// Comprova si el login és correcte
boolean comprovaLogin() {
  if (((userText.text.equals(userNameAdmin)||(userText.text.equals(userNameUser))) &&
    passText.text.equals("1234"))) {
    return true;
  } else {
    return false;
  }
}
