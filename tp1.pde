// tp1
//Luz Walter
//Sleeping Beauty title sequence

import ddf.minim.*;

Minim minim;
AudioPlayer musica;


// images
PImage fondo;
PImage fondo2;
PImage fondo3;
PImage fondo4;
PImage fondo5;

float posX, posY, tamX, tamY, velocidad;
String contenido;
float tam, x, y ;

//fonts
PFont mifuente;
PFont mifuentenueva; 
PFont mifuentefinal; 


void setup() {

  size(1000, 600);

  contenido = "The End";
  textAlign( CENTER, CENTER ); 
  tam = 150;
  x = width / 2;
  y = 2800;

  fondo = loadImage("fondo1.jpg");
  fondo2 = loadImage("fondo2.jpg");
  fondo3 = loadImage("fondo3.jpg");
  fondo4 = loadImage("fondo4.jpg");
  fondo5 = loadImage("fondo5.jpg");

  minim = new Minim(this);
  musica= minim.loadFile("SleepingBeauty.mp3");
  posX = 100;
  posY = 150;
  tamX = 100;
  tamY = 50;
  velocidad = 1.5;
  smooth();
}

void draw() {
  background(0);
  println( frameCount, frameCount/30 );
  println( mouseX, mouseY );


  mifuente = loadFont("Dialog.vlw");
  mifuentenueva = createFont("mifuente.ttf", 100);
  textFont(mifuentenueva);
  mifuentefinal = createFont("mifuentefinal.ttf", 100);

  posY -= velocidad;

  musica.play();




  image(fondo, 0, 0, 1000, 600);

  if (posY <= -370)
  {
    image(fondo2, 0, 0, 1000, 600);
  }
  if (posY <= -800)
  {
    image(fondo3, 0, 0, 1000, 600);
  }
  if (posY <= -1200) 
  { 
    image(fondo4, 0, 0, 1000, 600);
  }
  if (posY <= -1500) 
  { 
    image(fondo5, 0, 0, 1000, 600);
  }




  // pantalla 1 

  textSize(150);
  text("Walt Disney", width/2, posY + 500);
  textSize(50);
  text("presents", width/2, posY + 570); 


  // pantalla 2
  //image(fondo2, 0, 0, width, height); 
  textSize(150);
  text("Sleeping Beauty", width/2, posY + 900);




  // pantalla 3
  //image(fondo3, 0, 0, width, height); 
  textSize(70);
  text("with the talents of", width/2, posY + 1150);
  textSize(30);
  text("Mary Costa", width/2, posY + 1200);
  text("Eleanor Audrey", width/2, posY + 1250);
  text("Taylor Holmes", width/2, posY + 1300);
  text("Barbara Luddy", width/2, posY + 1350);
  text("Bill Shirley", width/2, posY + 1400);




  // pantalla 4
  //image(fondo4, 0, 0, width, height); 
  textSize(40);
  text("Production Supervisor .  .  .  . Ken Peterson", width/2, posY + 1600);
  text("Sound Supervisor .  .  .  .  Robert O. Cook", width/2, posY + 1650);
  text("Film Editor .   .   .   . Roy M. Brewer Jr", width/2, posY + 1700);
  text("Music Editor .   .   .  . Evelyn Kennedy", width/2, posY + 1750);

  textFont(mifuente);
  textSize(15);
  text("© COPYRIGHT MCMLVIII - WALT DISNEY PRODUCTIONS - ALL RIGHTS RESERVED", 500, posY + 1900); 




  // pantalla 5
  //image(fondo5, 0, 0, width, height); 
  textFont(mifuentenueva);
  textAlign(CENTER);
  textSize(30);
  text("Supervising Director", width/2, posY + 2100);
  textSize(70);
  text("Clyde Geronimi", width/2, posY + 2200);
  textSize(30);
  text("Secuence Directors", width/2, posY + 2300);
  textSize(70);
  text("Eric Larson", width/2, posY + 2400);
  text("Les Clark", width/2, posY + 2500);



  // FINAL 
  textFont(mifuentefinal);
  textSize( tam );
  text( contenido, x, y );

  if ( frameCount < 1750 ) {  //estado 1: texto subiendo
    y -= 1.4;
    } else if ( frameCount > 300 ) {  //texto achicandose
     tam = tam -0.5;
    }
    }
