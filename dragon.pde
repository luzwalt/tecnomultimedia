class dragon {

  float x, y, tam, vel;
  PImage dragon;
  boolean ok;


  dragon(int _y) {
    tam = 130;
    x= random(400, 1030);
    y= _y;
    dragon = loadImage( "dragon.png");
    vel = random(25, 30);
    ok = true;
  }

  void dibujar() {

  // if(second() < 3 | second() > 57  | (second() > 12 & second() < 15)| (second() > 20 & second() < 23))
  // if((second() == 3) || (second() == 7) || (second() == 11)|| (second() == 15)|| (second() == 25)|| (second() == 15))
   if(second() % 5 == 0)
     ok = false;
      else
       ok = true;
     
    
    if(ok){
    x = x - random(vel);
        y = y + 1;}
     else{
       x = x + random(vel);
         y = y - 2.9;}
   
       
       
       
    image(dragon, x, y, tam, tam-20);
    if (x < -100) {
      x= random(800, 1030);
      vel = random(25, 30);
    }
  }

  float Posx() {
    return x;
  }  

  float Posy() {
    return y;
  }
}
