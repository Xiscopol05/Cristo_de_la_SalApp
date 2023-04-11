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
  } else if (itbCenso.mouseOverButton() && itbCenso.enabled) {
    pantalla = PANTALLA.CENSO;
  } else if (itbContabilidad.mouseOverButton() && itbContabilidad.enabled) {
    estadoDeCuentas = getEstadoCuentas();
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
    String[] info = stCenso.getSelectedInfo();
    String [] infoH = getInfoTablaHermano(info[0]);
    printArray(infoH);
    tiNombre.text= infoH[2];
    tiApellidos.text = infoH[3];
    tiDNI.text = infoH[5];
    tiCalle.text = infoH[6];
    tiFechaNacimiento.text = infoH[4];
    tiFechaAlta.text = infoH[21];
    tiNumero.text = infoH[7];
    tiPiso.text = infoH[8];
    tiLocalidad.text = infoH[9];
    tiProvincia.text = infoH[10];
    tiTelefono.text = infoH[11];
    tiBanco.text = infoH[13];
    tiTitular.text = infoH[14];
    tiDNITitular.text = infoH[15];
    tiIBAN.text = infoH[16];
    tiEntidad.text = infoH[17];
    tiOficina.text = infoH[18];
    tiDigitoControl.text = infoH[19];
    tiNumeroCuenta.text = infoH[20];
    tiCorreoElectronico.text = infoH[12];
    pantalla = PANTALLA.CENSO_DETALLE;
  } else if (bFicha.mouseOverButton() && bFicha.enabled && pantalla == PANTALLA.CENSO_DETALLE) {
    launch(ruta+titulo1);
  } else if ( bAceptarCenso.mouseOverButton() && bAceptarCenso.enabled && pantalla == PANTALLA.CENSO_NUEVOHERMANO) {
    pantalla = PANTALLA.CENSO;
  } else if (itbPerfilPersonal.mouseOverButton() && itbPerfilPersonal.enabled) {
    pantalla = PANTALLA.CENSO_DETALLE;
  } else if (bDetalleBalance.mouseOverButton() && bDetalleBalance.enabled) {
    pantalla = PANTALLA.CONTABILIDAD_DETALLEBALANCE;
  } else if (bFicha.mouseOverButton() && bFicha.enabled && pantalla == PANTALLA.CENSO_NUEVOHERMANO) {
    selectInput("Selecciona un fitxer ...", "fitxaInscripcionSelected");
  } else if (bAñadirRecibo.mouseOverButton() && bAñadirRecibo.enabled && pantalla == PANTALLA.CONTABILIDAD_AÑADIRCONCEPTO) {
    selectInput("Selecciona un fitxer ...", "fileSelected");
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
  } else if (itbInsertarArchivo.mouseOverButton() && itbInsertarArchivo.enabled && pantalla == PANTALLA.ARCHIVO_NUEVO) {
    selectInput("Selecciona un fitxer ...", "fileSelected");
  } else if (bAceptarArchivo.mouseOverButton() && bAceptarArchivo.enabled && pantalla == PANTALLA.ARCHIVO_NUEVO) {
    pantalla = PANTALLA.ARCHIVO;
  } else if (bAceptarAvisosAlertas.mouseOverButton() && bAceptarAvisosAlertas.enabled && pantalla == PANTALLA.AVISOS_NUEVOAVISO) {
    String titulo = String.valueOf(tfTituloAviso.getValue());
    String descripcion = String.valueOf(getText(taNuevoAviso));
    insertInfoAviso( titulo, descripcion);
    pcAvisos = new PagedCard(numCardsPage);
    pcAvisos.setDimensions(menuWidth+20, primerIconY+(iconHeight-50), ((1280-menuWidth)/2)-10, iconHeight*4-iconHeight);
    pcAvisos.setData(getInfoTablaAviso());
    pcAvisos.setCards();
    pcAvisosPrincipal = new PagedCard(8);
    pcAvisosPrincipal.setDimensions(menuWidth+540, bannerHeight+30, 520, 550);
    pcAvisosPrincipal.setData(getInfoTablaAviso());
    pcAvisosPrincipal.setCards();
    taNuevoAviso.text= "";
    tfTituloAviso.text = "";
    pantalla = PANTALLA.AVISOS;
  } else if (bAceptarAvisosAlertas.mouseOverButton() && bAceptarAvisosAlertas.enabled && (pantalla == PANTALLA.AVISOS_DETALLEAVISO || pantalla == PANTALLA.AVISOS_DETALLEEVENTO)) {
    pantalla = PANTALLA.AVISOS;
  } else if (bAñadirAviso.mouseOverButton() && bAñadirAviso.enabled) {
    pantalla = PANTALLA.AVISOS_NUEVOAVISO;
  } else if (bModificarAviso.mouseOverButton() && bModificarAviso.enabled) {
    pantalla = PANTALLA.AVISOS_NUEVOAVISO;
  } else if (bDetalleAviso.mouseOverButton() && bDetalleAviso.enabled) {  
    String[] info = getInfoAvisoDetalle (pcAvisos.selectedCard+1);
    printArray(info);
    tiTituloDetalleAviso.text = info[0];
    tiDetalleAviso.text = info[1];
    pantalla = PANTALLA.AVISOS_DETALLEAVISO;
  } else if (bAñadirEvento.mouseOverButton() && bAñadirEvento.enabled) {
    pantalla = PANTALLA.AVISOS_NUEVOEVENTO;
  } else if (bModificarEvento.mouseOverButton() && bModificarEvento.enabled) {
    pantalla = PANTALLA.AVISOS_NUEVOEVENTO;
  } else if (bDetalleEvento.mouseOverButton() && bDetalleEvento.enabled) {
    String [] info = getInfoEventoDetalle(cEventos.fechaSelected);
    printArray(info);
    tiTituloDetalleEvento.text = info[0];
    tiDetalleEvento.text = info[1];
    tiFechaEventoDetalle.text = info[2];
    pantalla = PANTALLA.AVISOS_DETALLEEVENTO;
  } else if (bMesAnteriorAviso.mouseOverButton() && bMesAnteriorAviso.enabled) {
    cEventos.prevMonth();
  } else if (bMesPosteriorAviso.mouseOverButton() && bMesPosteriorAviso.enabled) {
    cEventos.nextMonth();
  } else if (bDetalle.mouseOverButton() && bDetalle.enabled && pantalla == PANTALLA.ARCHIVO) {
    String[] info = stArchivo.getSelectedInfo();
    String [] infoH = getInfoArchivoDetalle(info[0]);
    printArray(infoH);
    tiTituloArchivo.text = infoH[0];
    tiCategoriaArchivo.text = infoH[4];
    tiAñoDatacion.text = infoH[1];
    tituloAbrirArch = infoH[2];
    pantalla = PANTALLA.ARCHIVO_DETALLE;
  } else if (itbVerArchivoArchivo.mouseOverButton() && itbVerArchivoArchivo.enabled && pantalla == PANTALLA.ARCHIVO_DETALLE) {
    println(tituloAbrirArch);
    launch(ruta+tituloAbrirArch);
  } else if (bAceptarCensoDetalle.mouseOverButton() && bAceptarCensoDetalle.enabled && admin==true) {
    pantalla = PANTALLA.CENSO;
  } else if (bAceptarCensoDetalle.mouseOverButton() && bAceptarCensoDetalle.enabled) {
    pantalla = PANTALLA.PRINCIPAL;
  } else if (bModificar.mouseOverButton()&& bModificar.enabled) {
    String [][] info = getInfoTablaCensoBuscar(buscar.getValue());
    stCenso = new SelectTable(filasCenso, columnasCenso, 20+menuWidth, 285, 1280-menuWidth-40, 410);
    stCenso.setHeaders(headersCenso);
    stCenso.setData(info);
    stCenso.setColumnWidths(colWidthsCenso);
    stCenso.setColumnMaxChars(maxCharsCenso);
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
  tfAñoDatacion.isPressed();
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




  if (bAceptarCenso.mouseOverButton() && bAceptarCenso.enabled) {
    // Agafar els valors dels camps del formulari
    String nombre = String.valueOf(tfNombre.getValue());
    String apellidos = String.valueOf(tfApellidos.getValue());
    String fechanacimiento = formataFecha2(String.valueOf(dataCalendariNacimiento));
    String dni = String.valueOf(tfDNI.getValue());
    String calle = String.valueOf(tfCalle.getValue());
    String numero = String.valueOf(tfNumero.getValue());
    String piso = String.valueOf(tfPiso.getValue());
    String localidad = String.valueOf(tfLocalidad.getValue());
    String provincia = String.valueOf(tfProvincia.getValue());
    String telefono = String.valueOf(tfTelefono.getValue());
    String correoelectronico = String.valueOf(tfCorreoElectronico.getValue());
    String banco = String.valueOf(tfBanco.getValue());
    String titular = String.valueOf(tfTitular.getValue());
    String dnititular = String.valueOf(tfDNITitular.getValue());
    String iban = String.valueOf(tfIBAN.getValue());
    String entidad = String.valueOf(tfEntidad.getValue());
    String oficina = String.valueOf(tfOficina.getValue());
    String digitocontrol = String.valueOf(tfDigitoControl.getValue());
    String numerocuenta = String.valueOf(tfNumeroCuenta.getValue());
    String fechaalta = formataFecha2(String.valueOf(dataCalendariAlta));
    // Inserir a la BBDD
    insertInfoTablaHermano(nombre, apellidos, fechanacimiento, dni, calle, numero, piso, localidad, provincia, telefono, correoelectronico, banco, titular, dnititular, iban, entidad, oficina, digitocontrol, numerocuenta, fechaalta);
    // Resetear camps del formulari
    resetFormularioCenso();
    stCenso = new SelectTable(filasCenso, columnasCenso, 20+menuWidth, 285, 1280-menuWidth-40, 410);
    stCenso.setHeaders(headersCenso);
    stCenso.setData(getInfoTablaCenso());
    stCenso.setColumnWidths(colWidthsCenso);
    stCenso.setColumnMaxChars(maxCharsCenso);
  }

  if (bAceptarArchivo.mouseOverButton() && bAceptarArchivo.enabled) {
    // Agafar els valors dels camps del formulari
    String titulo = String.valueOf(tfTituloArchivo.getValue());
    String datacion = String.valueOf(tfAñoDatacion.getValue());
    String file = titol;
    String tipo = String.valueOf(sCategoriaArchivo.selectedValue);
    String idTipoArchivo = String.valueOf(obtenerIdTipoArchivo(tipo));
    insertInfoTablaArchivo( titulo, datacion, file, idTipoArchivo);
    // Inserir a la BBDD
    // Resetear camps del formulari
    resetFormularioArchivo();
    stArchivo = new SelectTable(filasArchivo, columnasArchivo, 20+menuWidth, 285, 1280-menuWidth-40, 410);
    stArchivo.setHeaders(headersArchivo);
    stArchivo.setData(getInfoTablaArchivo());
    stArchivo.setColumnWidths(colWidthsArchivo);
    stArchivo.setColumnMaxChars(maxCharsArchivo);
  }






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

  cpFechaAlta.checkButtons();


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

  if (bInicioSesion.mouseOverButton() && bInicioSesion.enabled && comprovaLogin()) {
    logged = true;
    admin = comprovaAdmin();
  }


  stlTipoConcepto.mouseOn();

  if (pantalla == PANTALLA.PRINCIPAL) {
    pcAvisosPrincipal.checkCardSelection();
  }

  if (PopUpinicioSesion.bAceptar.mouseOverButton() && PopUpinicioSesion.bAceptar.enabled) {
    pantalla = PANTALLA.PRINCIPAL;
  }

  if (bNextAviso.mouseOverButton() && bNextAviso.enabled) {
    pcAvisos.nextPage();
  } else if (bPrevAviso.mouseOverButton() && bPrevAviso.enabled) {
    pcAvisos.prevPage();
  } else if (pantalla == PANTALLA.AVISOS)
    pcAvisos.checkCardSelection();
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

// Reset del Formulari
void resetFormularioCenso() {
  tfNombre.removeAllText();
  tfApellidos.removeAllText();
  tfDNI.removeAllText();
  tfCalle.removeAllText();
  tfNumero.removeAllText();
  tfPiso.removeAllText();
  tfLocalidad.removeAllText();
  tfProvincia.removeAllText();
  tfTelefono.removeAllText();
  tfCorreoElectronico.removeAllText();
  tfBanco.removeAllText();
  tfTitular.removeAllText();
  tfDNITitular.removeAllText();
  tfIBAN.removeAllText();
  tfEntidad.removeAllText();
  tfOficina.removeAllText();
  tfDigitoControl.removeAllText();
  tfNumeroCuenta.removeAllText();
}

// Reset del Formulari
void resetFormularioArchivo() {
  tfTituloArchivo.removeAllText();
  dataCalendarioArchivo = "";
  titol="";
  tfAñoDatacion.removeAllText();
}

int obtenerIdTipoArchivo(String tipo) {
  int idTipoArchivo = -1;
  msql.query("SELECT idtipo_arch FROM tipo_arch WHERE tipo = '"+tipo+"'");
  if (msql.next()) {
    idTipoArchivo = msql.getInt("idtipo_arch");
  }
  return idTipoArchivo;
}
