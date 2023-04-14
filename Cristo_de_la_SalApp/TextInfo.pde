// Clase para mostrar información de texto en un rectángulo
class TextInfo {

  float x, y, w, h; // Coordenadas y dimensiones del rectángulo
  String text; // Texto a mostrar
  int c = 5; // Índice del color

  TextInfo(String t, float x, float y, float w, float h) {
    // Constructor que inicializa los valores del objeto
    this.text = t;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void setColor(int c) {
    // Método para cambiar el índice del color del objeto
    this.c = c;
  }

  void display() {
    // Método para mostrar el objeto en la pantalla
    pushStyle(); // Guarda el estilo actual
    pushMatrix(); // Guarda la matriz actual
    stroke(0);
    strokeWeight(2);
    fill(getColorAt(c)); // Obtiene el color correspondiente al índice y lo asigna al objeto
    rect(x, y, w, h); // Dibuja el rectángulo

    textFont(getFontAt(5)); // Obtiene la fuente de texto correspondiente al índice y lo asigna al objeto
    fill(0);
    text(this.text, x + 5, y + 10, w, h); // Dibuja el texto dentro del rectángulo

    popStyle(); // Recupera el estilo guardado
    popMatrix(); // Recupera la matriz guardada
  }
}
