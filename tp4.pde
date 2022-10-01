// tp4
//Luz Walter
//Luz's closet
https://youtu.be/LB9xUs9D_W4

// imagenes
PImage fondo;
PImage modelo;
Botas b;
Top t;
Pantalones p;
void setup() {
  size(1000, 800);
  b=new Botas();
  t=new Top();
  p=new Pantalones();
}
void draw() {
  //llamamos funcion de juego dibujar
  fondo = loadImage("fondo.jpg");
  image(fondo, 0, 0, 1000, 800);
  modelo = loadImage("modelo.png");
  image(modelo, 0, 0, 1000, 800);
  println(mouseX, mouseY);
  b.Dibujar();
  t.Dibujar();
  p.Dibujar();
  if(b.mover){
  t.mover=false;
  p.mover=false;
  }
  if(t.mover){
  b.mover=false;
  p.mover=false;
  }
  if(p.mover){
  t.mover=false;
  b.mover=false;
  }
  if (mousePressed) {
    b.Funcion();
    t.Funcion();
    p.Funcion();
  }
}
void mousePressed() {
  //llamamos la funcion de juego FuncionAgarrar
}
void mouseReleased() {
  //llamamos la funcion de juego FuncionSoltar
  b.Soltar();
  t.Soltar();
  p.Soltar();
}
