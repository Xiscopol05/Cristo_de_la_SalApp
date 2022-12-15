// Ruta del fitxer
String rutaFitxer ="";

// Nom del fitxer
String titol="";

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
    
    //titol = selection.getName();  
    titol = userNameUser+".pdf";
    println("Nom del Fitxer:"+titol);
    
    copiar(rutaFitxer, rutaCopia, titol);
  }
}
