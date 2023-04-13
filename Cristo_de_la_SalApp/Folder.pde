// Ruta del fitxer
String rutaFitxer ="";

// Nom del fitxer
String titol="";
String documento= "";

// Carpeta on copiar els fitxers
String rutaCopia = "/Users/xiscopolgonzalez/Desktop/Cristo_de_la_SalApp/Cristo_de_la_SalApp/data";

// Obri finestra per seleccionar fitxer
void fileSelected(File selection) {
  if (selection == null) {
    println("No s'ha seleccionat cap fitxer.");
  } else {

    // Obtenim la ruta del fitxer seleccionat
    rutaFitxer = selection.getAbsolutePath();
    println("Ruta del Fitxer:"+rutaFitxer);

    titol = selection.getName();
    println("Nom del Fitxer:"+titol);

    copiar(rutaFitxer, rutaCopia, titol);
  }
}

void fitxaInscripcionSelected(File selection) {
  if (selection == null) {
    println("No s'ha seleccionat cap fitxer.");
  } else {
    rutaFitxer = selection.getAbsolutePath();
  }
}

void reciboMovimiento(File selection) {
  if (selection == null) {
    println("No se ha seleccionado ningún archivo.");
  } else {
    rutaFitxer = selection.getAbsolutePath();
    println("Ruta del archivo seleccionado: " + rutaFitxer);

    titol = selection.getName();
    println("Título del archivo seleccionado: " + titol);

    // Guardar el título del archivo en la variable documento
    documento = titol;
  }
}
