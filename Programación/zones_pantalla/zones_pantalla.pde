// Disseny de la maquetació de l'App TRIVIO v1.2
// Establir les zones comunes entre pantalles.

void setup(){
  fullScreen();            // Pantalla completa
  //size(1920, 1080);      // Pantalla HD
  noStroke();              // Sense bordes
  textAlign(CENTER);       // Alineació del text
  textSize(18);            // Mida del text
}

void draw(){
  
  background(55);          // Color del fons
     
  dibuixaZonaLogo();
  dibuixaSideBar();
  dibuixaBanner();
  
  if(mousePressed){
    dibuixaColumna1();
    dibuixaColumna2();
  }
  else {
    dibuixaColumna12();
  }
  
  dibuixaColumna3();
}
