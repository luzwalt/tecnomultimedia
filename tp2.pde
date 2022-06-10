// tp2
//Luz Walter
//Ilusión óptica interactiva
//https://youtu.be/5S59988VsqA 


void setup() {
  size(800, 400);
}

void draw() {
  background (0);
  fill(random(0, 255), random(0, 255), random(0, 255)); // Lineas random

  pushMatrix();                       // Guardar cosas para el patrón de primer plano
  translate(width/2, height/2);       // mover al medio de la pantalla
  if (mouseX > 400) {                 // cuando pasamos al centro de la pantalla deja de dibujarse
    fill (255);                       // relleno el fondo 
    drawlines(); }                   
  popMatrix();

  pushMatrix();                  // Guardar cosas para el patrón de primer plano
  translate(mouseX, mouseY);     // mover ubicacion de el mouse
  rotate( radians(frameCount) ); // rotar 
  drawlines();                   // dibujar arriba
  popMatrix();
}

void drawlines() {
  int lineas = 200;                                   
  for (int i=0; i<lineas; i++) {
    float t0 = map(i, 0, lineas-1, 0, TWO_PI);        
    float t1 = t0 + (TWO_PI/(2*lineas));              
    arc(0, 0, 1000, 1000, t0, t1);                    
  }
}
