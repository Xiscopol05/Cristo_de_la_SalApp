// Quan pitjam tecla
void keyPressed() {
  //INICIO DE SESIÓN
  if (pantalla==PANTALLA.INICIO) {
    userText.keyPressed(key, (int)keyCode);
    passText.keyPressed(key, (int)keyCode);
  }
  //CENSO
  else if (pantalla==PANTALLA.CENSO) {
    buscar.keyPressed(key, (int)keyCode);
  } else if (pantalla==PANTALLA.CENSO_NUEVOHERMANO) {
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

    //CONTABILIDAD Añadir Concepto
  } else if (pantalla == PANTALLA.CONTABILIDAD_AÑADIRCONCEPTO) {
    tfTitulo.keyPressed(key, (int)keyCode);
    tfCantidad.keyPressed(key, (int)keyCode);
  }
  //Archivo Nuevo
  else if (pantalla == PANTALLA.ARCHIVO_NUEVO) {
    tfTituloArchivo.keyPressed(key, (int)keyCode);
    tfAñoDatacion.keyPressed(key, (int)keyCode);
  }
  //Nuevo Aviso
  else if (pantalla == PANTALLA.AVISOS_NUEVOAVISO) {
    tfTituloAviso.keyPressed(key, (int)keyCode);
    taNuevoAviso.keyPressed(key, (int)keyCode);
  }
  //Nuevo Evento
  else if (pantalla == PANTALLA.AVISOS_NUEVOEVENTO) {
    tfTituloEvento.keyPressed(key, (int)keyCode);
    taNuevoEvento.keyPressed(key, (int)keyCode);
  }
  //ARCHIVO
  else if (pantalla == PANTALLA.ARCHIVO) {
    buscarArchivo.keyPressed(key, (int)keyCode);
  }
  comprovaLogin();
  lastKeyCodePressed= (int)keyCode;

  // Mes anterior
  if (keyCode==LEFT) {
    cEventos.prevMonth();
    println("PREV MONTH");
  }
  // Mes calendario posterior
  else if (keyCode==RIGHT) {
    cEventos.nextMonth();
    println("PREV MONTH");
  }
  stlTipoConcepto.keyOn(); // Tipo de Concepto
}
