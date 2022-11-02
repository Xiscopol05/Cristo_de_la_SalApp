// Valores de posición de los elementos de la pantalla genérica

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
