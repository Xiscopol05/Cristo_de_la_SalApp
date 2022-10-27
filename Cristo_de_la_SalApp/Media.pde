// Archivo con la información de los medias de la App

// URL de la carpeta donde se encuentran los medias
String URL_IMGS = "imgs/";

// Array de imágenes 
PImage[] imgs;
  
// Establece las imágenes de la App
void setMedias(){
    this.imgs = new PImage[3];
    this.imgs[0] = loadImage(URL_IMGS+"logo.jpg");
    this.imgs[1] = loadImage(URL_IMGS+"banner.png");
    this.imgs[2] = loadImage(URL_IMGS+"icona.png");
}
  
// Getter del número d'imatges
int getNumImatges(){
  return this.imgs.length;
}
  
// Getter de la imagen del logo
PImage getLogo(){
  return  this.imgs[0];
}
  
// Getter de la imagen del banner
PImage getBanner(){
  return  this.imgs[1];
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
