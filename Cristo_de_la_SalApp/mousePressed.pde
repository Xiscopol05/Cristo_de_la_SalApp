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
    launch(ruta+titulo1);
  } else if (bRecuerdos.mouseOverButton() && bRecuerdos.enabled && pantalla == PANTALLA.ENLACES) {
    launch(ruta+titulo2);
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
  } else if (bAñadirAviso.mouseOverButton() && bAñadirAviso.enabled) {
    pantalla = PANTALLA.AVISOS_NUEVOAVISO;
  } else if (bModificarAviso.mouseOverButton() && bModificarAviso.enabled) {
    pantalla = PANTALLA.AVISOS_NUEVOAVISO;
  } else if (bDetalleAviso.mouseOverButton() && bDetalleAviso.enabled) {
    pantalla = PANTALLA.AVISOS_DETALLEAVISO;
  } else if (bAñadirEvento.mouseOverButton() && bAñadirEvento.enabled) {
    pantalla = PANTALLA.AVISOS_NUEVOEVENTO;
  } else if (bModificarEvento.mouseOverButton() && bModificarEvento.enabled) {
    pantalla = PANTALLA.AVISOS_NUEVOEVENTO;
  } else if (bDetalleEvento.mouseOverButton() && bDetalleEvento.enabled) {
    pantalla = PANTALLA.AVISOS_DETALLEEVENTO;
  }


  bAñadirAviso = buttons [39];
  bModificarAviso = buttons [40];
  bDetalleAviso = buttons [41];
  bAñadirEvento = buttons [42];
  bModificarEvento = buttons [43];
  bDetalleEvento = buttons [44];
  bRecuerdos = buttons[45];

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

  if (PopUpinicioSesion.bAceptar.mouseOverButton() && PopUpinicioSesion.bAceptar.enabled) {
    PopUpinicioSesion.setVisible(false);
  } else {
    PopUpinicioSesion.setVisible(true);
  }

  if (bNextAviso.mouseOverButton() && bNextAviso.enabled) {
    pcAvisos.nextPage();
  } else if (bPrevAviso.mouseOverButton() && bPrevAviso.enabled) {
    pcAvisos.prevPage();
  } else {
    pcAvisos.checkCardSelection();
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
