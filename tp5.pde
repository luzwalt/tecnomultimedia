// TP5 tecnomultimedia
// Miguel, Karen & Walter, Luz
// El juego consiste en que el principe tiene que esquivar a los dragones para llegar a la princesa


import ddf.minim.*; //librería de sonido

Minim minim;
AudioPlayer audio;
AudioPlayer audio2;
AudioPlayer audio3;

Juego juego;
PFont mifuente;

void setup() {
  size(1000, 600);


  //fuente
  mifuente = createFont("mifuente.ttf", 100);


  //audio
  minim = new Minim(this);
  audio = minim.loadFile("SleepingBeauty.wav"); // Sonido jugando
  audio2 = minim.loadFile("perdiste.wav"); // Sonido: perdiste
  audio3 = minim.loadFile("ganaste.wav"); // Sonido ganaste 


  juego = new Juego();
  smooth();
}

void draw() {
  juego.dibujar();
}

void keyPressed() {
  juego.teclado();
}
