// Archivo con la información de los medias de la App

// URL de la carpeta donde se encuentran los medias
String URL_IMGS = "imgs/";

// Array de imágenes 
PImage[] imgs;
  
// Establece las imágenes de la App
void setMedias(){
    this.imgs = new PImage[9];
    this.imgs[0] = loadImage(URL_IMGS+"logo.png");
    this.imgs[1] = loadImage(URL_IMGS+"mantonmanila.jpeg");
    this.imgs[2] = loadImage(URL_IMGS+"archivo.png");
    this.imgs[3] = loadImage(URL_IMGS+"avisos.png");
    this.imgs[4] = loadImage(URL_IMGS+"censo.png");
    this.imgs[5] = loadImage(URL_IMGS+"contabilidad.png");
    this.imgs[6] = loadImage(URL_IMGS+"enlaces.png");
    this.imgs[7] = loadImage(URL_IMGS+"file.png");
    this.imgs[8] = loadImage(URL_IMGS+"user.png");
}
  
// Getter del número d'imatges
int getNumImatges(){
  return this.imgs.length;
}
  
// Getter de la imagen del logo
PImage getLogo(){
  return  this.imgs[0];
}
  
// Getter de la imagen del fondo (mantón de manila)
PImage getFondoManton(){
  return  this.imgs[1];
}

// Getter del icono de la pestaña archivo
PImage getIconArchivo(){
  return  this.imgs[2];
}

// Getter del icono de la pestaña Avisos
PImage getIconAvisos(){
  return  this.imgs[3];
}

// Getter del icono de la pestaña Censo
PImage getIconCenso(){
  return  this.imgs[4];
}

// Getter del icono de la pestaña Contabilidad
PImage getIconContabilidad(){
  return  this.imgs[5];
}

// Getter del icono de la pestaña archivo
PImage getIconEnlaces(){
  return  this.imgs[6];
}

// Getter del icono file
PImage getIconFile(){
  return  this.imgs[7];
}

// Getter del icono user
PImage getIconUser(){
  return  this.imgs[8];
}
  

// Getter de la imagen i-ésima
PImage getImgAt(int i){
  return this.imgs[i];
}

  
// Dibuja el logo
void displayLogo(float x, float y, float w, float h){    
    image(getLogo(), x, y, w, h);
}

// Dibuixa la imágen i-ésima
void displayImg(int i, float x, float y, float w, float h){    
    image(getImgAt(i), x, y, w, h);
}
