class dragones {

  dragon[] drag;
  int i;
  dragones() { 

    drag = new dragon[4];   
    for (i=0; i<4; i++){
      drag[i] = new dragon((i*115)+60);
    }
  }


  void dibujar() {

    for (i=0; i<4; i++){
      drag [i].dibujar();
    }
  }   


  float posX(int i) {  
    return drag [i].Posx();
  }  

  float posY(int i) {  
    return drag [i].Posy();
  }
}  
