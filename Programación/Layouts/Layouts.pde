// Disseny de la maquetació de l'App TRIVIO
// Establir les zones comunes entre pantalles.

void setup(){
  //fullScreen();                       // Pantalla completa
  size(1800, 1080);                 // Pantalla HD
  noStroke();                         // Sense bordes
  textAlign(CENTER); textSize(18);   // Alineació i mida del text
}

void draw(){
  
  background(55);    // Color de fons
   
  // Zona Principal
  fill(200);
  rect(marginH, marginV, width - marginH*2, height - marginV*2);
  
  // Zona Logo
  fill(200,50,100);
  rect(marginH, marginV, logoWidth, logoHeight);
  fill(0);
  text("LOGO", marginH + logoWidth/2, marginV + logoHeight/2);
  
  // Zona Sidebar
  fill(50,200,100);
  rect(marginH, 2*marginV + logoHeight, sidebarWidth, sidebarHeight);
  fill(0);
  text("SIDEBAR", marginH + sidebarWidth/2, marginV + logoHeight + sidebarHeight/2);
  
  // Zona Banner
  fill(240, 100, 50);
  rect(2*marginH + logoWidth, marginV, bannerWidth, bannerHeight);
  fill(0);
  text("BANNER", marginH + logoWidth + bannerWidth/2, marginV + bannerHeight/2);
  
  
  // Zona Columnes 1, 2 i 3
  fill(200, 200, 50);
  rect(2*marginH + sidebarWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
  fill(0);
  text("COLUMN 1", 2*marginH + sidebarWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2);
  
  fill(200, 200, 50);
  rect(3*marginH + sidebarWidth + columnWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
  fill(0);
  text("COLUMN 2", 3*marginH + sidebarWidth + columnWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2);
  
  fill(200, 200, 50);
  rect(4*marginH + sidebarWidth + 2*columnWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
  fill(0);
  text("COLUMN 3", 4*marginH + sidebarWidth + 2*columnWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2);
  
  println("X: "+mouseX+", Y:"+mouseY);
  
}
