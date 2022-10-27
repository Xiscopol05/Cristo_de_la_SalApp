// Archivo con la información de las fuentes de la App
  
// Array de tipografias
PFont[] fonts;
  
// Establece las fuentes de la App
void setFonts(){
    this.fonts = new PFont[4];
    this.fonts[0] = createFont("Sacred Valley.ttf", medidaTitulo);
    this.fonts[1] = createFont("LANENAR_.ttf", medidaSubtitulo);
    this.fonts[2] = createFont("Sono-ExtraLight.ttf", medidaParrafo);
    this.fonts[3] = createFont("La Estroma.ttf", medidaTitulo);
}
  
  // Getter del número de fuentes
  int getNumFonts(){
    return this.fonts.length;
  }
  
  // Getter de la fuente primaria
  PFont getFirstFont(){
    return  this.fonts[0];
  }
  
  // Getter de la fuente secundaria
  PFont getSecondFont(){
    return  this.fonts[1];
  }
  
  // Getter de la fuente terciaria
  PFont getThirdFont(){
    return  this.fonts[2];
  }
  
  // Getter de la fuente i-esima
  PFont getFontAt(int i){
    return this.fonts[i];
  }
  
  
  // Dibuja las fuentes de la App
  void displayFonts(float x, float y, float h){
    pushStyle();     
      for(int i=0; i<getNumFonts(); i++){
        fill(0); stroke(0); strokeWeight(3);
        textFont(getFontAt(i));
        text("Tipografia "+i, x, y + i*h);
      }
    popStyle();
  }
