// Objetos de la clase Circulo
Circulo c1, c2, c3;

void setup() {
  // Dimensiones de la App
  size(800, 800);

  // Inicializa los colores de la App
  setColors();
  // Inicializa las fuentes de la App
  setFonts();

  //Define los círculos (posicion, medida i color)
  c1 = new Circulo(width/4, height/2, medidaCirculo);
  c1.setColor(getFirstColor());  // Color primari

  c2 = new Circulo(width/2, height/2, medidaCirculo);
  c2.setColor(getSecondColor());  // Color secundari

  c3 = new Circulo(3*width/4, height/2, medidaCirculo);
  c3.setColor(getThirdColor());  // Color terciari
}


void draw() {

  // Dibuja el fondo (blanco)
  background(255);

  // Dibuja los circulos (ejemplo de clases usando colores)
  c1.display();
  c2.display();
  c3.display();

  //Dibuja un rectangulo con el 5º color (ejemplo de usar los colores directamente)
  fill(getColorAt(4));
  noStroke();
  rect(0, 3*height/4, width, height/4);

  // Muestra la paleta de colores
  displayColors(100, 100, width-200);

  fill(0);
  textFont(getFirstFont());
  text("Titol de l'App", 50, 200);

  fill(50);
  textFont(getSecondFont());
  text("Subtitol de l'App", 50, 250);

  fill(55, 0, 0);
  textFont(getThirdFont());
  text("Paràgraf de l'App", 50, 300);


  displayFonts(100, 400, 100);
}
