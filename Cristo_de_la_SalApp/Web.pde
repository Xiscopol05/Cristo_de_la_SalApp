// Importa las clases necesarias para abrir una página web
import java.awt.Desktop;
import java.net.URI;
import java.io.IOException;
import java.net.URISyntaxException;

// Crea una variable Desktop para manejar la acción de abrir una página web
Desktop desktop;

// Función para abrir una página web dado su URL
void openWebPage(String siteUrl) {

  // Crea un objeto URI a partir del URL proporcionado
  try {
    URI site = new URI(siteUrl);
    // Comprueba si el escritorio es compatible con la acción de abrir el navegador
    if (Desktop.isDesktopSupported() && desktop.isSupported(Desktop.Action.BROWSE)) {
      // Abre el navegador con la página web correspondiente
      desktop.browse(site);
    } else {
      // Si el escritorio no soporta la acción, muestra un mensaje de error
      println("App no suporta el navegador");
    }
  }
  // Captura las excepciones que puedan surgir al crear el objeto URI
  catch(URISyntaxException e) {
    e.printStackTrace();
  }
  // Captura las excepciones que puedan surgir al intentar abrir el navegador
  catch(IOException e) {
    e.printStackTrace();
  }
}
