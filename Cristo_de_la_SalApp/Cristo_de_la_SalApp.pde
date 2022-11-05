//enumeración de las pantallas de la aplicación
enum PANTALLA {
  INICIO, PRINCIPAL, CENSO, CONTABILIDAD, ARCHIVO, AVISOS, ENLACES
};
///Pantalla actual
PANTALLA pantalla =PANTALLA.INICIO;

void setup() {
  fullScreen();
  setColors();
  setFonts();
  setMedias();
}

void draw() {

  // Dibuija la pantalla correspondiente
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
