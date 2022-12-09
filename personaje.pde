class Personaje {
  PImage principe;
  int x, y, d; 


  Personaje () {
    principe= loadImage ("principe.png");
    x= 50;
    y= 80;
  }

  void dibujar () {

    image(principe, x, y, 110, 110);
  }


  void mover() { // Zonas/ejes para que se pueda mover el príncipe.

    if (( keyCode== UP) && (y > 80)) {
      y = y - 40;
    }

    if ((keyCode== DOWN) && (y < 430))
      y = y + 40;

    if ((keyCode== LEFT) && (x > 1))
      x= x - 8; 
    if ((keyCode== RIGHT) && (x < 890))
      x= x + 8;
  }



  int Posx() {
    return x;
  }  

  int Posy() {
    return y;
  }
}
