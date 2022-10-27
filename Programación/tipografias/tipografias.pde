
void setup(){
  // Dimensions de l'App
  size(800, 800);
  
  // Inicialitza els colors de l'App
  setFonts();
  
}


void draw(){
  
  // Dibuixa el fons (blanc)
  background(255);
  
  fill(0);
  textFont(getFirstFont());
  text("Titol de l'App", 50, 200);
  
  fill(50);
  textFont(getSecondFont());
  text("Subtitol de l'App", 50, 250);
  
  fill(55, 0, 0);
  textFont(getThirdFont());
  text("Paràgraf de l'App", 50, 300);
  
  
  displayFonts(100, 400, 50);
  
}
