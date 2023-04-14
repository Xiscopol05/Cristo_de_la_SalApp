// Ruta del archivo
String rutaArchivo ="";

//Nombre del archivo
String titol="";
String documento= "";

// Carpeta donde copiar los archivos
String rutaCopia = "/Users/xiscopolgonzalez/Desktop/Cristo_de_la_SalApp/Cristo_de_la_SalApp/data";

// Abre la ventana para seleccionar los archivos
void fileSelected(File selection) {
  if (selection == null) {
    println("No s'ha seleccionat cap archivo.");
  } else {

    // Obtiene la ruta del archivo seleccionado
    rutaArchivo = selection.getAbsolutePath();
    println("Ruta del archivo:"+rutaArchivo);

    titol = selection.getName();
    println("Nombre del archivo:"+titol);

    copiar(rutaArchivo, rutaCopia, titol);
  }
}

void fitxaInscripcionSelected(File selection) {
  if (selection == null) {
    println("No se ha seleccionado ningún archivo");
  } else {
    rutaArchivo = selection.getAbsolutePath();
  }
}

void reciboMovimiento(File selection) {
  if (selection == null) {
    println("No se ha seleccionado ningún archivo.");
  } else {
    rutaArchivo = selection.getAbsolutePath();
    println("Ruta del archivo seleccionado: " + rutaArchivo);

    titol = selection.getName();
    println("Título del archivo seleccionado: " + titol);

    // Guardar el título del archivo en la variable documento
    documento = titol;
  }
}
