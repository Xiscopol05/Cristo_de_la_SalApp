// Archivo con la información de las fuentes de la App

// URL de la carpeta donde se encuentran los medias
String URL_FONTS = "fuentes/";

// Array de tipografias
PFont[] fonts;

// Establece las fuentes de la App
void setFonts() {
  this.fonts = new PFont[9];
  this.fonts[0] = createFont(URL_FONTS+"Sacred Valley.ttf", medidaTitulo);
  this.fonts[1] = createFont(URL_FONTS+"LANENAR_.ttf", medidaSubtitulo);
  this.fonts[2] = createFont(URL_FONTS+"Sono-ExtraLight.ttf", medidaParrafo);
  this.fonts[3] = createFont(URL_FONTS+"La Estroma.ttf", medidaTitulo);
  this.fonts[4] = createFont(URL_FONTS+"LANENAR_.ttf", medidaParrafo);
  this.fonts[5] = createFont(URL_FONTS+"LANENAR_.ttf", 24);
  this.fonts[6] = createFont(URL_FONTS+"Sacred Valley.ttf", 24);
  this.fonts[7] = createFont(URL_FONTS+"LANENAR_.ttf", 18);
  this.fonts[8] = createFont(URL_FONTS+"LANENAR_.ttf", 20);
}

// Getter del número de fuentes
int getNumFonts() {
  return this.fonts.length;
}

// Getter de la fuente primaria
PFont getFirstFont() {
  return  this.fonts[0];
}

// Getter de la fuente secundaria
PFont getSecondFont() {
  return  this.fonts[1];
}

// Getter de la fuente terciaria
PFont getThirdFont() {
  return  this.fonts[2];
}

// Getter de la fuente i-esima
PFont getFontAt(int i) {
  return this.fonts[i];
}
