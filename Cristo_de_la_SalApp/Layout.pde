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

//dimensiones iconos del menú
float iconWidth = 200,
  iconHeight = ((menuHeight - (logoHeight+40))/5);

//posición incial de los iconos del menú
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
}

void banner() {
  fill(getColorAt(1));
  rect(menuWidth, 0, bannerWidth, bannerHeight);
  fill(0);
  text("banner", menuWidth+bannerWidth/2, bannerHeight/2);
}

void logo() {
  fill(getColorAt(3));
  rect(30, 20, logoWidth, logoHeight);
  fill(0);
  text("logo", 30+logoWidth/2, 20+logoHeight/2);
  image(getImgAt(0), 30, 20, logoWidth, logoHeight);
}

void icon(float y) {
  fill(getColorAt(0));
  rect(0, y, iconWidth, iconHeight);
  fill(0);
  text("icon", iconWidth/2, y+(iconHeight/2)+10);
}

void icons() {
  icon(primerIconY);
  icon(segundoIconY);
  icon(tercerIconY);
  icon(cuartoIconY);
  icon(quintoIconY);
}
