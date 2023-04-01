
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


void insertInfoTablaHermano(String nombre, String apellidos, String fechanacimiento, String dni, String calle, String numerodireccion, String piso, String localidad, String provincia, String telefono, String correoelectronico, String banco, String titular, String dnititular, String iban, String entidad, String oficina, String digitocontrol, String numerocuenta, String fechaalta){
String numHermano = String.valueOf(getNumeroUltimoHermano()+1);
// Insertar el nuevo registro en la tabla 'user'
String password = generatePassword(6);
String q2 = "INSERT INTO user (numhermano, password, role_id) VALUES ('"+numHermano+"','"+password+"','2')";
// Insertar el nuevo registro en la tabla 'hermano'
String sNombre = nombre.replace("'", "\'");
String sApellidos = apellidos.replace("'", "\'");
String q3 = "INSERT INTO hermano (user_numhermano, user_role_id, nombre, apellidos, fechanacimiento, dni, calle, numerodireccion, piso, localidad, provincia, telefono, correoelectronico, banco, titular, dnititular, iban, entidad, oficina, digitocontrol, numerocuenta, fechaalta) VALUES ('"+numHermano+"','2', '"+sNombre+"','"+sApellidos+"','"+fechanacimiento+"','"+dni+"','"+calle+"','"+numerodireccion+"','"+piso+"','"+localidad+"','"+provincia+"','"+telefono+"','"+correoelectronico+"','"+banco+"','"+titular+"','"+dnititular+"','"+iban+"','"+entidad+"','"+oficina+"','"+digitocontrol+"','"+numerocuenta+"','"+fechaalta+"')";
println(q2);
println(q3);
msql.query(q3);
msql.query(q2);

}


String generatePassword(int length) {
  String capitalCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
  String specialCharacters = "!@#$";
  String numbers = "1234567890";
  String combinedChars = capitalCaseLetters + lowerCaseLetters + specialCharacters + numbers;
  Random random = new Random();
  char[] password = new char[length];

  password[0] = lowerCaseLetters.charAt(random.nextInt(lowerCaseLetters.length()));
  password[1] = capitalCaseLetters.charAt(random.nextInt(capitalCaseLetters.length()));
  password[2] = specialCharacters.charAt(random.nextInt(specialCharacters.length()));
  password[3] = numbers.charAt(random.nextInt(numbers.length()));

  for (int i = 4; i< length; i++) {
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



// Obté informació de la taula Unitat
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

void insertInfoTablaArchivo(String titulo, String datacion, String file, String tipo){
String q4 = "INSERT INTO `archivo` (`id`, `titulo`, `datacion`, `file`, `tipo_arch_idtipo_arch`) VALUES (NULL, '"+titulo+"', '"+datacion+"', '"+file+"', '"+tipo+"');";
println(q4);
msql.query(q4);
}
