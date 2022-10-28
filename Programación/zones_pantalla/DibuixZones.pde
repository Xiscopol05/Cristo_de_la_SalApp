// FUNCIONS DE DIBUIX DE LES ZONES

void dibuixaZonaLogo(){
  pushStyle();
    fill(200,50,100);
    rect(marginH, marginV, logoWidth, logoHeight);
    fill(0);
    text("LOGO", marginH + logoWidth/2, marginV + logoHeight/2);
  popStyle();
}

void dibuixaSideBar(){
  pushStyle();
    fill(50,200,100);
    rect(marginH, 2*marginV + logoHeight, sidebarWidth, sidebarHeight);
    fill(0);
    text("SIDEBAR", marginH + sidebarWidth/2, marginV + logoHeight + sidebarHeight/2);  
  popStyle();
}

void dibuixaBanner(){
  pushStyle();
    fill(240, 100, 50);
    rect(2*marginH + logoWidth, marginV, bannerWidth, bannerHeight);
    fill(0);
    text("BANNER", marginH + logoWidth + bannerWidth/2, marginV + bannerHeight/2);
  popStyle();
}

void dibuixaColumna1(){
  pushStyle();
    fill(200, 200, 50);
    rect(2*marginH + sidebarWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
    fill(0);
    text("COLUMN 1", 2*marginH + sidebarWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2);
  popStyle();
}

void dibuixaColumna2(){
  pushStyle();
    fill(200, 200, 50);
    rect(3*marginH + sidebarWidth + columnWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
    fill(0);
    text("COLUMN 2", 3*marginH + sidebarWidth + columnWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2);
  popStyle();
}

void dibuixaColumna12(){
  pushStyle();
    fill(200, 200, 50);
    rect(2*marginH + sidebarWidth, 2*marginV + bannerHeight, 2*columnWidth + marginH, columnHeight);
    fill(0);
    text("COLUMN 1i2", 3*marginH + sidebarWidth + columnWidth, 2*marginV + bannerHeight + columnHeight/2);
  popStyle();
}

void dibuixaColumna3(){
  pushStyle();
    fill(200, 200, 50);
    rect(4*marginH + sidebarWidth + 2*columnWidth, 2*marginV + bannerHeight, columnWidth, columnHeight);
    fill(0);
    text("COLUMN 3", 4*marginH + sidebarWidth + 2*columnWidth +columnWidth/2, 2*marginV + bannerHeight + columnHeight/2); 
  popStyle();
}
