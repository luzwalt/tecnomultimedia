class Juego {
  String estado; 
  PImage ini,per,gan,cred;
  Fondo fondo;
  Personaje personaje;
  dragones dragon;
  int i,vidas; 


  Juego() {
    // pos Inicial de mi personaje:
    fondo= new Fondo();
    personaje= new Personaje ();
    dragon= new dragones();
    vidas= 3;
    ini= loadImage( "comenzar.png");
    per= loadImage( "perdiste.png");
    gan= loadImage( "ganaste.png");
    cred= loadImage( "creditos.jpg");
    estado = "inicio";
  }



 void colision(){
    
    
    for(i=0; i<4; i++){
       if(dist(personaje.Px(),personaje.Py(),  dragon.posXp(i),dragon.posYp(i)) < 80)
        estado = "perdiste";
    }     
    
  }  


 void ganaste(){
   
   if(personaje.Px() > 748)
     estado = "ganaste"; 
   
 }  





  void dibujar() {
    if(estado == "inicio"){
       image(ini, 0, 0, width, height);
       if(mousePressed & mouseX > 700)
         estado = "nivel1";
         if(mousePressed & mouseX < 300)
            estado = "creditos";
         
    }else
     if(estado == "nivel1"){
         int m = 40000-millis();
         fondo.dibujar();
         dragon.dibujar();
         personaje.dibujar();
         colision();
         ganaste();
         text(m/100, 50, 50);
         if(m < 0 )
          estado = "perdiste";

    }else
      if(estado == "perdiste"){
        image(per, 0, 0, width, height);
         if(mousePressed){
         estado = "inicio";
         personaje= new Personaje ();
         dragon= new dragones();
         }
      } else
         if(estado == "ganaste"){
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
