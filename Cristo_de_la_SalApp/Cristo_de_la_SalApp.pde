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
    dibuixaPantallaInici();
    break;
  case PRINCIPAL:
    dibuixaPantallaJugar();
    break;
  case CENSO:
    dibuixaPantallaPunts();
    break;
  case CONTABILIDAD:
    dibuixaPantallaPreguntes();
    break;
  case ARCHIVO:
    dibuixaPantallaConfig();
    break;
  case AVISOS:
    dibuixaPantallaSobre();
    break;
  case ENLACES:
    dibuixaPantallaSobre();
    break;
  }
}
