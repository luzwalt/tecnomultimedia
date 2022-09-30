class Botas {
  PImage botas;
  boolean mover;
  float x, y;
  Botas() {
    botas = loadImage("botas2.png");
    x=550;
    y=285;
  }
  void Dibujar() {
    image(botas, x, y);
  }
  void Funcion() {
    if (mouseX>=550 && mouseX<=730 && mouseY >= 285 && mouseY <=520) {
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
