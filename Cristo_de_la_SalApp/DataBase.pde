
// Objeto de conexión a la BBDD
MySQL msql;

// Parámetros de la conexión
String user     = "admin2";
String pass     = "12345";
String database = "cristo";


// Conexión
void connexionBBDD() {

  msql = new MySQL( this, "localhost:8889", database, user, pass );

  // Si la conexión se ha establecido
  if (msql.connect()) {
    // La conexión se ha establecido correctamente
    println("Connexió establerta :)");
  } else {
    // La conexión ha fallado!!!
    println("Error de Connexió :(");
  }
}

boolean isValidated(String usuario, String password) {
  msql.query( "SELECT count(*) AS n FROM `user` WHERE `numhermano` = '"+usuario+"' AND `password` LIKE '"+password+"'");
  msql.next();
  int numRows = msql.getInt("n");
  if (numRows == 1) {
    return true;
  } else {
    return false;
  }
}

boolean isAdmin(String usuario) {
  msql.query("SELECT count(*) AS n FROM `user` WHERE `role_id` = 1 AND `numhermano` = '"+usuario+"'");
  msql.next();
  int role = msql.getInt("n");
  if (role == 1) {
    return true;
  } else {
    return false;
  }
}

// Obtiene el número de filas de la tabla
int getNumRowsTabla(String nombreTabla) {
  msql.query( "SELECT COUNT(*) AS n FROM %s", nombreTabla );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Obtiene el número de filas de la query
int getNumRowsQuery(String q) {
  msql.query( q);
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Obtiene la información de la tabla hermano
String[][] getInfoTablaCenso() {

  int numRows = getNumRowsTabla("hermano");
  String[][] data = new String[numRows][5];

  int nr=0;
  msql.query( "SELECT * FROM hermano" );
  while (msql.next()) {
    data[nr][0] = String.valueOf(msql.getInt("user_numhermano"));
    data[nr][1] = msql.getString("nombre");
    data[nr][2] = msql.getString("apellidos");
    data[nr][3] = formataFecha(String.valueOf(msql.getDate("fechaalta")));
    data[nr][4] = String.valueOf(msql.getInt("telefono"));
    nr++;
  }
  return data;
}

// Obtiene la información del censo filtrada
String[][] getInfoTablaCensoBuscar(String buscar) {

  String q2 = "SELECT COUNT(*) AS n FROM hermano WHERE apellidos LIKE '%"+buscar+"%'";
  int numRows = getNumRowsQuery(q2);
  println("NR:"+numRows);

  if (numRows>0) {
    String[][] data = new String[numRows][5];

    String q = "SELECT * FROM hermano WHERE apellidos LIKE '%"+buscar+"%'";
    int nr=0;
    msql.query( q );
    while (msql.next()) {
      data[nr][0] = String.valueOf(msql.getInt("user_numhermano"));
      data[nr][1] = msql.getString("nombre");
      data[nr][2] = msql.getString("apellidos");
      data[nr][3] = formataFecha(String.valueOf(msql.getDate("fechaalta")));
      data[nr][4] = String.valueOf(msql.getInt("telefono"));
      nr++;
    }
    return data;
  } else {
    String[][] array = new String[5][5];

    // Rellenar el array con strings vacíos
    for (int i = 0; i < 5; i++) {
      for (int j = 0; j < 5; j++) {
        array[i][j] = "";
      }
    }

    return array;
  }
}

// Obtiene la información de la tabla hermano para un hermano determinado
String[] getInfoTablaHermano(String idHermano) {

  String[] data = new String[22];

  msql.query( "SELECT * FROM hermano WHERE user_numhermano='"+idHermano+"'" );
  msql.next();
  data[0] = String.valueOf(msql.getInt("user_numhermano"));
  titulo1 = data[0]+".pdf";
  data[1] = String.valueOf(msql.getInt("user_role_id"));
  data[2] = msql.getString("nombre");
  data[3] = msql.getString("apellidos");
  data[4] = formataFecha(String.valueOf(msql.getDate("fechanacimiento")));
  data[5] = msql.getString("dni");
  data[6] = msql.getString("calle");
  data[7] = String.valueOf(msql.getInt("numerodireccion"));
  data[8] = msql.getString("piso");
  data[9] = msql.getString("localidad");
  data[10] = msql.getString("provincia");
  data[11] = msql.getString("telefono");
  data[12] = msql.getString("correoelectronico");
  data[13] = msql.getString("banco");
  data[14] = msql.getString("titular");
  data[15] = msql.getString("dnititular");
  data[16] = msql.getString("iban");
  data[17] = msql.getString("entidad");
  data[18] = msql.getString("oficina");
  data[19] = msql.getString("digitocontrol");
  data[20] = msql.getString("numerocuenta");
  data[21] = formataFecha(String.valueOf(msql.getDate("fechaalta")));
  return data;
}

//Modifica el formato de la fecha
String formataFecha2(String fechaEntrada) {

  String dia = fechaEntrada.split("/")[0];
  String mes = fechaEntrada.split("/")[1];
  String ano = fechaEntrada.split("/")[2];

  return ano+"-"+mes+"-"+dia;
}

//Modifica el formato de la fecha
String formataFecha(String fechaEntrada) {

  String ano = fechaEntrada.split("-")[0];
  String mes = fechaEntrada.split("-")[1];
  String dia = fechaEntrada.split("-")[2];

  return dia+"/"+mes+"/"+ano;
}

//Inserta información relativa a los hermanos (user y hermano)
void insertInfoTablaHermano(String nombre, String apellidos, String fechanacimiento, String dni, String calle, String numerodireccion, String piso, String localidad, String provincia, String telefono, String correoelectronico, String banco, String titular, String dnititular, String iban, String entidad, String oficina, String digitocontrol, String numerocuenta, String fechaalta) {
  String numHermano = String.valueOf(getNumeroUltimoHermano()+1);
  // Insertar el nuevo registro en la tabla 'user'
  String password = generatePassword(6);
  String q2 = "INSERT INTO user (numhermano, password, role_id) VALUES ('"+numHermano+"','"+password+"','2');";
  // Insertar el nuevo registro en la tabla 'hermano'
  String sNombre = nombre.replace("'", "\'");
  String sApellidos = apellidos.replace("'", "\'");
  String q3 = "INSERT INTO hermano (user_numhermano, user_role_id, nombre, apellidos, fechanacimiento, dni, calle, numerodireccion, piso, localidad, provincia, telefono, correoelectronico, banco, titular, dnititular, iban, entidad, oficina, digitocontrol, numerocuenta, fechaalta) VALUES ('"+numHermano+"','2', '"+sNombre+"','"+sApellidos+"','"+fechanacimiento+"','"+dni+"','"+calle+"','"+numerodireccion+"','"+piso+"','"+localidad+"','"+provincia+"','"+telefono+"','"+correoelectronico+"','"+banco+"','"+titular+"','"+dnititular+"','"+iban+"','"+entidad+"','"+oficina+"','"+digitocontrol+"','"+numerocuenta+"','"+fechaalta+"');";
  println(q2);
  println(q3);
  msql.query(q2);
  msql.next();
  msql.query(q3);
  String ficha= numHermano+".pdf";
  copiar(rutaArchivo, rutaCopia, ficha);
}

//genera una contraseña aleatoria
String generatePassword(int length) {
  String capitalCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";

  String numbers = "1234567890";
  String combinedChars = capitalCaseLetters + lowerCaseLetters + numbers;
  Random random = new Random();
  char[] password = new char[length];

  password[0] = lowerCaseLetters.charAt(random.nextInt(lowerCaseLetters.length()));
  password[1] = capitalCaseLetters.charAt(random.nextInt(capitalCaseLetters.length()));
  password[2] = numbers.charAt(random.nextInt(numbers.length()));

  for (int i = 3; i< length; i++) {
    password[i] = combinedChars.charAt(random.nextInt(combinedChars.length()));
  }
  return new String(password);
}

//Indica el número de hermano más alto existente
int getNumeroUltimoHermano() {
  String q = "SELECT MAX( user_numhermano  ) AS n FROM hermano";
  println(q);
  msql.query(q);
  msql.next();
  return (msql.getInt("n"));
}



// Obtiene la información de la tabla archivo
String[][] getInfoTablaArchivo() {

  int numRows = getNumRowsTabla("archivo");
  String[][] data = new String[numRows][3];

  int nr=0;
  msql.query( "SELECT archivo.titulo AS titulo, archivo.datacion AS datacion, archivo.file AS file, tipo_arch.tipo FROM archivo, tipo_arch WHERE archivo.tipo_arch_idtipo_arch=tipo_arch.idtipo_arch ORDER BY datacion ASC;" );
  while (msql.next()) {
    data[nr][0] = msql.getString("titulo");
    data[nr][1] = String.valueOf(msql.getInt("datacion"));
    data[nr][2] = msql.getString("tipo");
    nr++;
  }
  return data;
}

//Inserta información del archivo en la BBDD
void insertInfoTablaArchivo(String titulo, String datacion, String file, String tipo) {
  String q4 = "INSERT INTO `archivo` (`id`, `titulo`, `datacion`, `file`, `tipo_arch_idtipo_arch`) VALUES (NULL, '"+titulo+"', '"+datacion+"', '"+file+"', '"+tipo+"');";
  println(q4);
  msql.query(q4);
}

//Obtiene la información de los movimientos y la adapta para poder insertarla en la tabla de los movimientos
String[][] getInfoTablaMovimientos(String tipoMov, int numFilas) {
  String q = "SELECT CONCAT(UPPER(SUBSTRING(c.nombre, 1, 1)) ,'.', t.idtipo_mov) AS codigo, t.nombre AS concepto, SUM(m.cantidad) AS cantidad FROM movimiento m, tipo_mov t, categoria_mov c WHERE m.tipo_mov_idtipo_mov=t.idtipo_mov AND t.categoria=c.idcategoria_mov AND c.nombre='"+tipoMov+"' GROUP BY m.tipo_mov_idtipo_mov, t.categoria ORDER BY t.idtipo_mov ASC;";
  String[][] data = new String[numFilas][3];

  int nr=0;
  msql.query(q );
  while (msql.next()) {
    data[nr][0] = msql.getString("codigo");
    data[nr][1] = msql.getString("concepto");
    data[nr][2] = String.valueOf(msql.getFloat("cantidad")+" €");
    nr++;
  }
  return data;
}

//Cuenta el total de ingresos
float getTotalIngresos() {
  String q ="SELECT SUM(m.cantidad) AS total FROM movimiento m, categoria_mov c, tipo_mov t WHERE m.tipo_mov_idtipo_mov=t.idtipo_mov AND t.categoria=c.idcategoria_mov AND c.idcategoria_mov='1'";
  msql.query(q);
  msql.next();
  return msql.getFloat("total");
}

//Obtiene el total de gastos
float getTotalGastos() {
  String q ="SELECT SUM(m.cantidad) AS total FROM movimiento m, categoria_mov c, tipo_mov t WHERE m.tipo_mov_idtipo_mov=t.idtipo_mov AND t.categoria=c.idcategoria_mov AND c.idcategoria_mov='2'";
  msql.query(q);
  msql.next();
  return msql.getFloat("total");
}

//Calcula el estado de cuentas actual
float getEstadoCuentas() {
  String qCantIng = "SELECT SUM(m.cantidad) AS cantidad FROM movimiento m, tipo_mov t, categoria_mov c WHERE m.tipo_mov_idtipo_mov=t.idtipo_mov AND t.categoria=c.idcategoria_mov AND c.nombre='Ingresos' GROUP BY c.nombre;";
  msql.query(qCantIng);
  msql.next();
  float CantIng= msql.getFloat("cantidad");
  String qCantGast = "SELECT SUM(m.cantidad) AS cantidad FROM movimiento m, tipo_mov t, categoria_mov c WHERE m.tipo_mov_idtipo_mov=t.idtipo_mov AND t.categoria=c.idcategoria_mov AND c.nombre='Gastos' GROUP BY c.nombre;";
  msql.query(qCantGast);
  msql.next();
  float CantGast= msql.getFloat("cantidad");
  float CantTot = CantIng - CantGast;
  return CantTot;
}

//Obtiene la información de un elemento determinado de la tabla archivo
String [] getInfoArchivoDetalle (String titulo) {
  String data[] = new String [5];

  msql.query("SELECT * FROM `archivo` WHERE titulo = '"+titulo+"'");
  msql.next();
  data[0] = msql.getString("titulo");
  data[1] = String.valueOf(msql.getInt("datacion"));
  data[2] = msql.getString("file");
  data[3] = String.valueOf(msql.getInt("tipo_arch_idtipo_arch"));
  msql.query("SELECT `tipo` FROM `tipo_arch` WHERE idtipo_arch = '"+data[3]+"'");
  msql.next();
  data [4] = msql.getString("tipo");

  return data;
}

// Obtiene la información de la tabla aviso
String[][] getInfoTablaAviso() {

  int numRows = getNumRowsTabla("aviso");
  String[][] data = new String[numRows][2];

  int nr=0;
  msql.query( "SELECT * FROM `aviso`");
  while (msql.next()) {
    data[nr][0] = String.valueOf("Aviso "+msql.getInt("idaviso"));
    data[nr][1] = msql.getString("descripcion");
    nr++;
  }
  return data;
}

//Inserta información en la tabla aviso
void insertInfoAviso(String titulo, String descripcion) {
  String numAviso = String.valueOf(getNumeroUltimoAviso()+1);
  String q = "INSERT INTO `aviso`  (`idaviso`, `titulo`, `descripcion`) VALUES ('"+numAviso+"', '"+titulo+"', '"+descripcion+"')";
  println(q);
  msql.query(q);
}

//Obtiene el id del último aviso
int getNumeroUltimoAviso() {
  String q = "SELECT MAX(idaviso) AS n FROM aviso";
  println(q);
  msql.query(q);
  msql.next();
  return (msql.getInt("n"));
}

//Obtiene información de la tabla evento
String[][] getInfoEvento() {
  int numRows = getNumRowsTabla("evento");
  String[][] data = new String[numRows][2];

  int nr=0;
  msql.query( "SELECT * FROM `evento`");
  while (msql.next()) {
    data[nr][0] = String.valueOf(msql.getDate("fecha"));
    data[nr][1] = msql.getString("evento");
    nr++;
  }
  return data;
}

//Obtiene la información de un elemento determinado de la tabla evento
String [] getInfoEventoDetalle (String fecha) {
  String data[] = new String [3];

  msql.query("SELECT * FROM `evento` WHERE fecha = '"+fecha+"'");
  if (msql.next()) {
    data[0] = msql.getString("evento");
    data[1] = msql.getString("descripcion");
    data[2] = formataFecha(String.valueOf(msql.getDate("fecha")));
  } else {
    data[0] = "No hay eventos";
    data[1] = "No hay eventos para la fecha que se ha seleccionado. Intentelo de nuevo con una fecha resaltada.";
    data[2] = formataFecha(fecha);
  }
  return data;
}

//Obtiene la información de un elemento determinado de la tabla aviso
String [] getInfoAvisoDetalle (int idAviso) {
  String data[] = new String [2];

  msql.query("SELECT * FROM `aviso` WHERE idAviso = '"+idAviso+"'");
  if (msql.next()) {
    data[0] = msql.getString("titulo");
    data[1] = msql.getString("descripcion");
  } else {
    data[0] = "Selecciona un aviso";
    data[1] = "Selecciona un aviso para visualizar su contenido";
  }
  return data;
}

//Obtiene la información del balance detallado por tipo de movimiento
String[][] getInfoBalanceDetalle(String titulo) {
  int numRows = getNumRowsTabla("movimiento");
  String[][] data = new String[numRows][3];
  int nr=0;
  msql.query( "SELECT m.* FROM movimiento m INNER JOIN tipo_mov t ON m.tipo_mov_idtipo_mov = t.idtipo_mov WHERE t.nombre= '"+titulo+"'");
  while (msql.next()) {
    data[nr][0] = " ";
    data[nr][1] = msql.getString("titulo");
    data[nr][2] = String.valueOf(msql.getFloat("cantidad")+" €");
    nr++;
  }
  return data;
}

//Obtiene los headers de la tabla de detalle de los movimientos
String[] getHeadersTablaDetalleMovimientos(String tipoMov) {
  String q = "SELECT CONCAT(UPPER(SUBSTRING(c.nombre, 1, 1)) ,'.', t.idtipo_mov) AS codigo, t.nombre AS concepto, SUM(m.cantidad) AS cantidad FROM movimiento m, tipo_mov t, categoria_mov c WHERE m.tipo_mov_idtipo_mov=t.idtipo_mov AND t.categoria=c.idcategoria_mov AND t.nombre= '"+tipoMov+"' GROUP BY m.tipo_mov_idtipo_mov, t.categoria ORDER BY t.idtipo_mov ASC";
  String[] data = new String[3];
  msql.query(q);
  if (msql.next()) {
    data[0] = msql.getString("codigo");
    data[1] = msql.getString("concepto");
    data[2] = String.valueOf(msql.getFloat("cantidad")+" €");
  } else {
    data[0] = "Selecciona un concepto";
    data[1] = "Selecciona un concepto para visualizar su contenido";
    data[2] = " ";
  }
  return data;
}

//Obtiene un movimiento determinado
String[] getMovimientosDetallados(String tituloMovimiento) {
  String q = "SELECT m.titulo, m.fechamovimiento, m.cantidad, t.nombre, m.documento FROM movimiento m JOIN tipo_mov t ON m.tipo_mov_idtipo_mov = t.idtipo_mov WHERE m.titulo = '"+tituloMovimiento+"'";
  String[] data = new String[5];
  msql.query(q);
  if (msql.next()) {
    data[0] = msql.getString("titulo");
    data[1] = formataFecha(String.valueOf(msql.getDate("fechamovimiento")));
    data[2] = String.valueOf(msql.getFloat("cantidad")+" €");
    data[3] = msql.getString("t.nombre");
    recibo = msql.getString("documento");
  } else {
    data[0] = "Selecciona un concepto para visualizar su contenido";
    data[1] = "Selecciona un concepto";
    data[2] = "Selecciona un concepto";
    data[3] = "Selecciona un concepto";
    recibo = "";
  }
  return data;
}

//Obtiene los tipos de movimiento
String [][] getTipoMovimiento() {
  int numRows = getNumRowsTabla("tipo_mov");
  String[][] data = new String[numRows][2];
  int nr=0;
  msql.query("SELECT `idtipo_mov`, `nombre` FROM `tipo_mov`");
  while (msql.next()) {
    data[nr][0] = String.valueOf(msql.getInt("idtipo_mov"));
    data[nr][1] = msql.getString("nombre");
    nr++;
  }
  return data;
}

//Inserta en la tabla nuevos movimientos
void insertNuevoMovimiento(String titulo, String fechamovimiento, String cantidad, String documento, String nombreTipoMov) {
  msql.query("SELECT `idtipo_mov` FROM `tipo_mov` WHERE `nombre` = '"+nombreTipoMov+"'");
  if (msql.next()) { // avanzar al primer registro en el resultado
    int tipo_mov_idtipo_mov = msql.getInt("idtipo_mov");
    String q = "INSERT INTO `movimiento`(`titulo`, `fechamovimiento`, `cantidad`, `documento`, `tipo_mov_idtipo_mov`) VALUES ('"+titulo+"','"+fechamovimiento+"','"+cantidad+"','"+documento+"','"+tipo_mov_idtipo_mov+"')";
    println(q);
    msql.query(q);
    copiar(rutaArchivo, rutaCopia, documento);
  } else {
    println("No se encontró el tipo de movimiento: "+nombreTipoMov);
  }
}

//Obtiene datos filtrados por búsqueda de la tabla archivo
String[][] getInfoArchivoBuscar(String buscar) {

  String q2 = "SELECT COUNT(*) AS n FROM archivo WHERE titulo LIKE '%" + buscar + "%'";
  int numRows = getNumRowsQuery(q2);
  println("NR:" + numRows);

  if (numRows > 0) {
    String[][] data = new String[numRows][3];

    String q = "SELECT archivo.titulo, archivo.datacion, tipo_arch.tipo " +
      "FROM archivo " +
      "JOIN tipo_arch ON archivo.tipo_arch_idtipo_arch = tipo_arch.idtipo_arch " +
      "WHERE archivo.titulo LIKE '%" + buscar + "%'";

    int nr = 0;
    msql.query(q);
    while (msql.next()) {
      data[nr][0] = msql.getString("titulo");
      data[nr][1] = String.valueOf(msql.getInt("datacion"));
      data[nr][2] = msql.getString("tipo");
      nr++;
    }

    return data;
  } else {
    String[][] array = new String[numRows][3];

    // Rellenar el array con strings vacíos
    for (int i = 0; i < 5; i++) {
      for (int j = 0; j < 5; j++) {
        array[i][j] = "";
      }
    }

    return array;
  }
}
