// Valores de posición de los elementos de la pantalla genérica


// Dimensiones Barra Menú Lateral
float menuWidth  = 200,
  menuHeight = 800;

// Dimensiones Banner
float bannerWidth  = 1280,
  bannerHeight = 100;

// Dimensiones logo
float logoWidth  = 140,
  logoHeight = 140;

float iconWidth = 200,
  iconHeight = ((menuHeight - (logoHeight+40))/5);

float primerIconY = 180,
  segundoIconY = iconHeight+primerIconY,
  tercerIconY = iconHeight+segundoIconY,
  cuartoIconY = iconHeight+tercerIconY, 
  quintoIconY = iconHeight+cuartoIconY;

  void menuBar() {
  fill(getColorAt(1));
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  text("MENU", menuWidth/2, menuHeight/2);
  icon(180);
  icon(primerIconY);
  icon(iconHeight+primerIconY);
  icon(iconHeight+3*primerIconY);
  icon(iconHeight+4*primerIconY);
}

void banner() {
  fill(getColorAt(2));
  rect(menuWidth, 0, bannerWidth, bannerHeight);
  fill(0);
  text("banner", menuWidth+bannerWidth/2, bannerHeight/2);
}

void logo() {
  fill(getColorAt(3));
  rect(30, 20, logoWidth, logoHeight);
  fill(0);
  text("logo", 30+logoWidth/2, 20+logoHeight/2);
}

void icon(float y) {
  fill(getColorAt(4));
  rect(0, y, iconWidth, iconHeight);
  fill(0);
  text("icon", iconWidth/2, y+iconHeight/2);
}
