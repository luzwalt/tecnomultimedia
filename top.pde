class Top {
  PImage top;
  boolean mover;
  float x, y;
  Top() {
    top = loadImage("top2.png");
    x=730;
    y=195;
  }
  void Dibujar() {
    image(top, x, y);
  }
  void Funcion() {
    if (mouseX>=730 && mouseX<=885 && mouseY >= 195 && mouseY <=310) {
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
