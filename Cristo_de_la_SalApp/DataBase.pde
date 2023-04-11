
// Objecte de connexió a la BBDD
MySQL msql;

// Paràmetres de la connexió
String user     = "admin2";
String pass     = "12345";
String database = "cristo";


// Connexió
void connexionBBDD() {

  msql = new MySQL( this, "localhost:8889", database, user, pass );

  // Si la connexió s'ha establert
  if (msql.connect()) {
    // La connexió s'ha establert correctament
    println("Connexió establerta :)");
  } else {
    // La connexió ha fallat!!!
    println("Error de Connexió :(");
  }
}

boolean isValidated(String usuario, String password) {
  msql.query( "SELECT count(*) AS n FROM `user` WHERE `numhermano` = %s AND `password` LIKE '%s'", usuario, password );
  msql.next();
  int numRows = msql.getInt("n");
  if (numRows == 1) {
    return true;
  } else {
    return false;
  }
}

boolean isAdmin(String usuario) {
  msql.query("SELECT count(*) AS n FROM `user` WHERE `role_id` = 1 AND `numhermano` = %s", usuario );
  msql.next();
  int role = msql.getInt("n");
  if (role == 1) {
    return true;
  } else {
    return false;
  }
}

// Obté el número de files de la taula
int getNumRowsTabla(String nombreTabla) {
  msql.query( "SELECT COUNT(*) AS n FROM %s", nombreTabla );
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Obté el número de files de la query
int getNumRowsQuery(String q) {
  msql.query( q);
  msql.next();
  int numRows = msql.getInt("n");
  return numRows;
}

// Obté informació de la taula Unitat
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

// Obté informació de la taula Unitat
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

// Obté informació de la taula Hermano
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


String formataFecha2(String fechaEntrada) {

  String dia = fechaEntrada.split("/")[0];
  String mes = fechaEntrada.split("/")[1];
  String ano = fechaEntrada.split("/")[2];

  return ano+"-"+mes+"-"+dia;
}

String formataFecha(String fechaEntrada) {

  String ano = fechaEntrada.split("-")[0];
  String mes = fechaEntrada.split("-")[1];
  String dia = fechaEntrada.split("-")[2];

  return dia+"/"+mes+"/"+ano;
}


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
  msql.query(q3);
  msql.query(q2);
  String ficha= numHermano+".pdf";
  copiar(rutaFitxer, rutaCopia, ficha);
}


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

int getNumeroUltimoHermano() {
  String q = "SELECT MAX( user_numhermano  ) AS n FROM hermano";
  println(q);
  msql.query(q);
  msql.next();
  return (msql.getInt("n"));
}



// Obté informació de la taula archivo
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

void insertInfoTablaArchivo(String titulo, String datacion, String file, String tipo) {
  String q4 = "INSERT INTO `archivo` (`id`, `titulo`, `datacion`, `file`, `tipo_arch_idtipo_arch`) VALUES (NULL, '"+titulo+"', '"+datacion+"', '"+file+"', '"+tipo+"');";
  println(q4);
  msql.query(q4);
}

String[][] getInfoTablaMovimientos(String tipoMov, int numFilas) {
  String q = "SELECT CONCAT(UPPER(SUBSTRING(c.nombre, 1, 1)) ,'.', t.idtipo_mov) AS codigo, t.nombre AS concepto, SUM(m.cantidad) AS cantidad FROM movimiento m, tipo_mov t, categoria_mov c WHERE m.tipo_mov_idtipo_mov=t.idtipo_mov AND t.categoria=c.idcategoria_mov AND c.nombre='"+tipoMov+"' GROUP BY m.tipo_mov_idtipo_mov, t.categoria ORDER BY t.idtipo_mov ASC;";
  String[][] data = new String[numFilas][3];

  int nr=0;
  msql.query(q );
  while (msql.next()) {
    data[nr][0] = msql.getString("codigo");
    data[nr][1] = msql.getString("concepto");
    data[nr][2] = String.valueOf(msql.getFloat("cantidad"));
    nr++;
  }
  return data;
}

float getTotalIngresos() {
  String q ="SELECT SUM(m.cantidad) AS total FROM movimiento m, categoria_mov c, tipo_mov t WHERE m.tipo_mov_idtipo_mov=t.idtipo_mov AND t.categoria=c.idcategoria_mov AND c.idcategoria_mov='1'";
  msql.query(q);
  msql.next();
  return msql.getFloat("total");
}

float getTotalGastos() {
  String q ="SELECT SUM(m.cantidad) AS total FROM movimiento m, categoria_mov c, tipo_mov t WHERE m.tipo_mov_idtipo_mov=t.idtipo_mov AND t.categoria=c.idcategoria_mov AND c.idcategoria_mov='2'";
  msql.query(q);
  msql.next();
  return msql.getFloat("total");
}

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

// Obté informació de la taula archivo
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

void insertInfoAviso(String titulo, String descripcion) {
  String q = "INSERT INTO `aviso` (`titulo`, `descripcion`) VALUES ('"+titulo+"', '"+descripcion+"')";
  println(q);
  msql.query(q);
}

String 
