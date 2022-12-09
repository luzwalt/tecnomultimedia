class Juego {
  String estado; // Variable para pasar a los distintos estados/pantallas.
  PImage ini, per, gan, cred, ins, tiempo;
  Fondo fondo; //Inicializamos variables
  Personaje personaje; // Inicializamos variables
  dragones dragon; // Inicializamos variables
  int i, act; 


  Juego() {
    fondo= new Fondo();
    personaje= new Personaje ();
    dragon= new dragones();
    ini= loadImage( "comenzar.png");
    per= loadImage( "perdiste.png");
    gan= loadImage( "ganaste.png");
    cred= loadImage( "creditos.png");
    ins= loadImage( "instrucciones.png");
    tiempo = loadImage( "tiempo.png");
    estado = "inicio";
  }



  void reiniciar() {
    personaje= new Personaje ();
    dragon= new dragones();
    estado = "inicio";
  }



  void colision() { // Colisión del personaje con el dragón, cuando colisiona perdiste.
 

    for (i=0; i<4; i++) {
      if (dist(personaje.Posx(), personaje.Posy(), dragon.posX(i), dragon.posY(i)) < 80) {
        estado = "perdiste";
        audio2.play();
        audio.pause();
      }
    }
  }

  void ganaste() { 

    if (personaje.Posx() > 850) {
      estado = "ganaste"; // Pasa al estado ganar.
      audio3.play();
      audio.pause();
    }
  } 



  void dibujar() { // Lógica de estado
    if (estado == "inicio") {
      image(ini, 0, 0, width, height);
      if (mousePressed & mouseX > 790) { // Botón para comenzar a jugar (nivel 1)
        estado = "nivel1";
        act= 40000+millis();
        audio.play();
      } else
        if (mousePressed & mouseX  < 300) // Botón que si es menor a 300píx pasa a la pantalla 'Créditos'. Cambia de estado.
          estado = "creditos";

        else 
        if (mousePressed & mouseX < 650)
          estado = "instrucciones";

      audio2.rewind();
      audio3.rewind();
      audio2.pause();
      audio3.pause();
    } else
      if (estado == "nivel1") {



        int m = act-millis();
        fondo.dibujar();
        dragon.dibujar();
        personaje.dibujar();
        colision();
        ganaste();
        rect(10, 10, 95, 50);
        noStroke();
        fill(255, 0, 0);
        textFont(mifuente, 25);
        text(m/100, 50, 50);
        image(tiempo, 10, 10, 50, 50);
        textSize(150);         
        fill(150, 143, 238);

        if (m < 0 ) {
          estado = "perdiste";
          audio2.play();
          audio.pause();
        }
      } else
        if (estado == "perdiste") {


          image(per, 0, 0, width, height);
          if (mousePressed) {
            reiniciar();
          }
        } else
          if (estado == "ganaste") {

            image(gan, 0, 0, width, height);
            if (mousePressed )
              reiniciar();
          } else
            if (estado == "creditos") {
              image(cred, 0, 0, width, height);
              if (mousePressed & mouseX > 500 & mouseX < 790)
                estado = "inicio";
            } else
              if (estado == "instrucciones") {
                image(ins, 0, 0, width, height);
                if (mousePressed & mouseX > 500 & mouseX < 790)
                  estado = "inicio";
              }
  }

  void teclado() {
    personaje.mover();
  }
}
