
class ShowImage {

  // Dimensions
  int x, y, w, h;

  // Index imatge actual
  int currentImage;

  // Títulos de les imágenes
  String[] noms;

  // Imágenes
  PImage[] imgs;

  // Tiempo
  int tempsImg = 100;

  // Constructor
  ShowImage(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.currentImage = 0;
  }

  // Setters

  void setImages(String[] noms) {
    this.noms = noms;
    this.imgs = new PImage[noms.length];
    for (int i=0; i<imgs.length; i++) {
      imgs[i] = loadImage(URL_IMGS+noms[i]);
    }
  }


  void next() {
    if (this.currentImage<this.imgs.length-1) {
      this.currentImage++;
    } else {
      this.currentImage=0;
    }
  }


  // Dibuja la Imágen
  void display() {
    pushStyle();
    fill(150);
    stroke(0);
    rect(x-5, y-5, w+10, h+10);

    // Imágen a mostrar
    PImage img = imgs[currentImage];
    image(img, x, y, w, h);


    // Pasa a la siguiente imágen
    if (frameCount%tempsImg==0) {
      next();
    }
  }
}
