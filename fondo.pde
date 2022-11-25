class Fondo {
  PImage calle; 
  int x, y;

  Fondo() {

    x= width;
    y= height;

  }

  void dibujar() {
        calle= loadImage("calle.jpg");
        image(calle,0,0, x, y );
  }
}
