// Componentes de la GUI - Botones

// Botones de la GUI
Button b1, b2, b3, b4;

// Dimensiones de los botones
float buttonW = 300;
float buttonH = 100;

// Color de fondo de la App
color bgColor = color(255);

void setup() {

  size(800, 800);      // Dimensiones de la Pantalla

  // Creació dels botons
  b1 = new Button("RED", width/3, height/5, buttonW, buttonH);
  b2 = new Button("GREEN", width/3, 2*height/5, buttonW, buttonH);
  b3 = new Button("BLUE", width/3, 3*height/5, buttonW, buttonH);
  b4 = new Button("DISABLED", width/3, 4*height/5, buttonW, buttonH);

  //Desactiva el botón b4
  b4.setEnabled(false);
}

void draw() {

  //Fondo de la ventana
  background(bgColor);

  // Dibuja los botones
  b1.display();
  b2.display();
  b3.display();
  b4.display();

  //Actualiza forma del cursor
  updateCursor();
}

// En caso de apretar el mouse
void mousePressed() {

  //Si apretamos sobre el botón b1 y está habilitado
  if (b1.mouseOverButton() && b1.enabled) {
    bgColor = color(255, 0, 0);
  }
  //Si apretamos sobre el botón b2 y está habilitado
  else if (b2.mouseOverButton() && b2.enabled) {
    bgColor = color(0, 255, 0);
  }
  //Si apretamos sobre el botón b3 y está habilitado
  else if (b3.mouseOverButton() && b3.enabled) {
    bgColor = color(0, 0, 255);
  }
}


// Modifica el cursor
void updateCursor() {

  //Si está sobre algún botón (b1, b2 o b3) y está habilitado
  if ((b1.mouseOverButton() && b1.enabled)||
    (b2.mouseOverButton() && b2.enabled)||
    (b3.mouseOverButton() && b3.enabled)) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
