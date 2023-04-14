import java.io.IOException;
import java.nio.file.*;

// Copia un archivo en otra ubicacion
void copiar(String rutaOriginal, String rutaCopia, String titol) {
  Path original = Paths.get(rutaOriginal);
  Path copia    = Paths.get(rutaCopia+"/"+titol);
  try {
    Files.copy(original, copia);
    println("OK: archivo copiado en la carpeta.");
  }
  catch (IOException e) {
    println("ERROR: No se ha podido copiar el archivo");
  }
}
