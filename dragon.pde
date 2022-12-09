class dragon {

  float x, y, tam, vel; // Variables
  PImage dragon;
  boolean ok; // Es la dirección del dragón, si va para adelante o para atrás. Para retroceder. 


  dragon(int _y) {
    tam = 150;
    x= random(500, 1500); // Posición x
    y= _y; // Posición y 
    dragon = loadImage( "dragon.png");
    vel = random(2, 9); // Velocidad aleatoria que le dimos a los dragones dentro de esos param igualmente.
    ok = true;
  }

  void dibujar() {

    // if(second() < 3 | second() > 57  | (second() > 12 & second() < 15)| (second() > 20 & second() < 23))
    // if((second() == 3) || (second() == 7) || (second() == 11)|| (second() == 15)|| (second() == 25)|| (second() == 15))
    if (second() % 5 == 0) // Pruebas que hicimos y no funcionó, hasta que encontramos la función MOD (resto de la div).
      //Cada 5seg los dragones retroceden. Avanzan 4 seg y retoceden 1seg. 
      ok = false; // Cuando es false, retrocede
    else
      ok = true; //Avanza


    if (ok) {
      x = x - random(vel); // Mientras los dragones avanzan, bajan, como avanzan + de lo que suben, banjan 1 píx.
      y = y + 0.9;
    } else {
      x = x + random(vel-3); // En este caso, cuando retroceden suben 2 píx.
      y = y - 2.7; 
    }



    image(dragon, x, y, tam, tam-20);
    if (x < -100) {
      x= random(900, 1500);
      vel = random(4, 10);
    }
  }

  float Posx() {
    return x;
  }  

  float Posy() {
    return y;
  }
}
