// Archivo con la información de los medias de la App

// URL de la carpeta donde se encuentran los medias
String URL_IMGS = "imgs/";
String URL_VECTORS = "vectors/";

// Array de imágenes
PImage[] imgs;
// Array de imágenes vectoriales  (SVG)
PShape[] shapes;

// Establece las imágenes de la App
void setMedias() {
  this.imgs = new PImage[13];
  this.imgs[0] = loadImage(URL_IMGS+"logo.png");
  this.imgs[1] = loadImage(URL_IMGS+"mantonmanila.jpeg");
  this.imgs[2] = loadImage(URL_IMGS+"archivo.png");
  this.imgs[3] = loadImage(URL_IMGS+"avisos.png");
  this.imgs[4] = loadImage(URL_IMGS+"censo.png");
  this.imgs[5] = loadImage(URL_IMGS+"contabilidad.png");
  this.imgs[6] = loadImage(URL_IMGS+"enlaces.png");
  this.imgs[7] = loadImage(URL_IMGS+"file.png");
  this.imgs[8] = loadImage(URL_IMGS+"user.png");
  this.imgs[9] = loadImage(URL_IMGS+"cristo1.jpg");
  this.imgs[10] = loadImage(URL_IMGS+"cristo2.jpeg");
  this.imgs[11] = loadImage(URL_IMGS+"cristo3.jpeg");
  this.imgs[12] = loadImage(URL_IMGS+"cristo4.jpeg");
}
void setVectors() {
  this.shapes = new PShape[2];
  this.shapes[0] = loadShape(URL_VECTORS+"logoNegro.svg");
  this.shapes[1] = loadShape(URL_VECTORS+"logoBlanco.svg");
}

// Getter del número d'imatges
int getNumImatges() {
  return this.imgs.length;
}

//getter de la imagen del logo (.png)
PImage getLogo() {
  return this.imgs[0];
}

// Getter de la imagen del fondo (mantón de manila)
PImage getFondoManton() {
  return  this.imgs[1];
}

// Getter del icono de la pestaña archivo
PImage getIconArchivo() {
  return  this.imgs[2];
}

// Getter del icono de la pestaña Avisos
PImage getIconAvisos() {
  return  this.imgs[3];
}

// Getter del icono de la pestaña Censo
PImage getIconCenso() {
  return  this.imgs[4];
}

// Getter del icono de la pestaña Contabilidad
PImage getIconContabilidad() {
  return  this.imgs[5];
}

// Getter del icono de la pestaña archivo
PImage getIconEnlaces() {
  return  this.imgs[6];
}

// Getter del icono file
PImage getIconFile() {
  return  this.imgs[7];
}

// Getter del icono user
PImage getIconUser() {
  return  this.imgs[8];
}


// Getter de la imagen i-ésima
PImage getImgAt(int i) {
  return this.imgs[i];
}

// Getter del número d'imatges vectorials
int getNumVectors() {
  return this.shapes.length;
}

// Getter de la imatge del logo
PShape getSVGLogo() {
  return  this.shapes[1];
}


// Dibuja el logo
void displayLogo() {
  image(getLogo(), 30, 20, logoWidth, logoHeight);
}

// Dibuja la imágen i-ésima
void displayImg(int i, float x, float y, float w, float h) {
  image(getImgAt(i), x, y, w, h);
}
