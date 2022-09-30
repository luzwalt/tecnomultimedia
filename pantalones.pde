class Pantalones {
  PImage pantalon;
  boolean mover;
  float x, y;
  Pantalones() {
    pantalon =loadImage("pantalon2.png");
    x=770;
    y=360;
  }
  void Dibujar() {
    image(pantalon, x, y);
  }
  void Funcion() {
    if (mouseX>=770 && mouseX<=975 && mouseY >= 360 && mouseY <=750) {
      mover=true;
    }
    if (mover) {
      x=mouseX;
      y=mouseY;
    }
  }
  void Soltar() {
    mover=false;
  }
}
