void setButtonsMenu() {
  this.botonesMenu = new Button[6];
  this.botonesMenu[0] = new Button("Principal", 1000, (bannerHeight/2)-13.5, 100, 25);
  this.botonesMenu[1] = new Button("Censo", 0, primerIconY, iconWidth, iconHeight);
  this.botonesMenu[2] = new Button("Contabilidad", 0, segundoIconY, iconWidth, iconHeight);
  this.botonesMenu[3] = new Button("Archivo", 0, tercerIconY, iconWidth, iconHeight);
  this.botonesMenu[4] = new Button("Avisos y alertas", 0, cuartoIconY, iconWidth, iconHeight );
  this.botonesMenu[5] = new Button("Enlaces", 0, quintoIconY, iconWidth, iconHeight);
}
