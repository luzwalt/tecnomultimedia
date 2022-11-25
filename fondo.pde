class Fondo {
  PImage calle; 
  int x, y;

  Fondo() {

    x= width;
    y= height;

    //calle= loadImage("calle.png");
  }

  void dibujar() {
        calle= loadImage("calle.png");
        image(calle,0,0, x, y );
  }
}
