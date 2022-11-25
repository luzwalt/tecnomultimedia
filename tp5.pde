 // TP5 tecnomultimedia
 // Miguel, Karen
 // Walter, Luz
 // El juego consiste en que el principe tiene que esquivar a los dragones para llegar a la princesa


import ddf.minim.*;

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
  audio = minim.loadFile("SleepingBeauty.wav");
  audio2 = minim.loadFile("perdiste.wav");
  audio3 = minim.loadFile("ganaste.wav");
  
  
  juego = new Juego();
  smooth();
}

void draw() {
  juego.dibujar();
   mifuente = createFont("mifuente.ttf", 100);
   textFont(mifuente,25);
}

void keyPressed(){
  juego.teclado();
}



  
