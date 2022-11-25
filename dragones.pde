class dragones {

  dragon[] tras;
  int i;
  dragones() { 

    tras = new dragon[4];   
    for (i=0; i<4; i++){
      tras[i] = new dragon((i*115)+60);
    }
  }


  void dibujar() {

    for (i=0; i<4; i++){
      tras[i].dibujar();
    }
  }   


  float posXp(int i) {  
    return tras[i].Px();
  }  

  float posYp(int i) {  
    return tras[i].Py();
  }
}  
