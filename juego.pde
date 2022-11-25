class Juego {
  String estado; 
  PImage ini,per,gan,cred,ins;
  Fondo fondo;
  Personaje personaje;
  dragones dragon;
  int i; 


  Juego() {
    fondo= new Fondo();
    personaje= new Personaje ();
    dragon= new dragones();
    ini= loadImage( "comenzar.jpg");
    per= loadImage( "perdiste.png");
    gan= loadImage( "ganaste.png");
    cred= loadImage( "creditos.jpg");
    ins= loadImage( "instrucciones.jpg");
    estado = "inicio";
  }



 void colision(){
    
    
    for(i=0; i<4; i++){
       if(dist(personaje.Posx(),personaje.Posy(),  dragon.posX(i),dragon.posY(i)) < 80)
        estado = "perdiste";
    }     
    
  }  


 void ganaste(){
   
   if(personaje.Posx() > 748)
     estado = "ganaste"; 
   
 }  





  void dibujar() {
    if(estado == "inicio"){
       image(ini, 0, 0, width, height);
       if(mousePressed & mouseX > 700)
         estado = "nivel1";
         
        if(mousePressed & mouseX > 400)
         image(ins, 0, 0, width, height);

          
         if(mousePressed & mouseX < 300)
            estado = "creditos";
           
         
    }else
     if(estado == "nivel1"){
    
      if(audio.isPlaying())
        audio.pause();
       else
       audio.play();
        
         int m = 40000-millis();
         fondo.dibujar();
         dragon.dibujar();
         personaje.dibujar();
         colision();
         ganaste();
         text(m/100, 50, 50);
         textSize (30);
         if(m < 0 )
          estado = "perdiste";

    }else
      if(estado == "perdiste"){
        
      if(audio2.isPlaying())
        audio2.pause();
       else
     audio2.play();
     
        image(per, 0, 0, width, height);
         if(mousePressed){
         estado = "inicio";
         personaje= new Personaje ();
         dragon= new dragones();
         }
      } else
         if(estado == "ganaste"){
           
      if(audio3.isPlaying())
        audio3.pause();
       else
     audio3.play();
     
     
        image(gan, 0, 0, width, height);
         }
         else
         if(estado == "creditos"){
        image(cred, 0, 0, width, height);
          if(mousePressed & mouseX > 700)
           estado = "inicio";
         }
  }

  void teclado() {
    personaje.mover();
  }
}
