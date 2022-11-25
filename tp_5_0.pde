
Juego game;
void setup() {
  size(1000, 600);
  game = new Juego();
}

void draw() {
  game.dibujar();
}

void keyPressed(){
  game.teclado();
}



  
