//enumeración de las pantallas de la aplicación
enum PANTALLA {
  INICIO, PRINCIPAL, CENSO, CONTABILIDAD, ARCHIVO, AVISOS, ENLACES
};
///Pantalla actual
PANTALLA pantalla =PANTALLA.INICIO;

//Botones
Button bPrincipal;

void setup() {
  fullScreen();
  setColors();
  setFonts();
  setMedias();
  
  //Creación de los botones
  bPrincipal = new Button("Inicio de sesión", width/2, 620, 50, 50);
}

void draw() {
  // Dibuja la pantalla correspondiente
  switch(pantalla) {
  case INICIO:
    dibujaPantallaInicio();
    break;
  case PRINCIPAL:
    dibujaPantallaPrincipal();
    break;
  case CENSO:
    dibujaPantallaCenso();
    break;
  case CONTABILIDAD:
    dibujaPantallaContabilidad();
    break;
  case ARCHIVO:
    dibujaPantallaArchivo();
    break;
  case AVISOS:
    dibujaPantallaAvisos();
    break;
  case ENLACES:
    dibujaPantallaEnlaces();
    break;
  }
}
