class Personaje{
PImage principe;
  int x, y, d; 


  Personaje () {
    principe= loadImage ("principe.png");
    x= 50;
    y= 80;
  }
  
  
  
  
  void dibujar () {
    image(principe, x, y , 80,90); 
  }


  void mover() {

    if (( keyCode== UP) && (y > 80)){
      y = y - 105;}
      
       if ((keyCode== DOWN) && (y < 300))
         y = y + 105;
                
       if((keyCode== LEFT) &&(x > 1))
                x= x - 5; 
       if((keyCode== RIGHT) &&(x < 750))
                x= x + 5; 
  }



int Posx(){
 return x; 
}  

int Posy(){
 return y; 
}  

}
