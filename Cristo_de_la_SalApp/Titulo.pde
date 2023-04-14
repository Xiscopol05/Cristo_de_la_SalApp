// Definición de la clase Titulo
class Titulo {

  // Atributos de la clase
  float x, y, w, h;
  String text;

  // Constructor de la clase, recibe el texto y las coordenadas y dimensiones del rectángulo
  Titulo(String t, float x, float y, float w, float h) {
    this.text = t;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  // Método para mostrar el título
  void display() {
    pushStyle(); // Guarda el estilo actual
    pushMatrix(); // Guarda la matriz actual de transformación
    // Configura el trazo y relleno del rectángulo y lo dibuja
    stroke(0);
    strokeWeight(2);
    fill(getColorAt(3));
    rect(x, y, w, h);

    // Configura la fuente de texto y dibuja el texto dentro del rectángulo
    textFont(getFontAt(5));
    fill(0);
    text(this.text, x + 10, y + 27);

    popStyle(); // Recupera el estilo guardado
    popMatrix(); // Recupera la matriz guardada
  }
}
