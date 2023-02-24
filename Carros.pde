class Carro {
  float y;
  float x;
  float largo;
  float alto;
  float velocidad = random(1, 10);

  
  Carro(float xcarro, float ycarro, float largoCarro, float altoCarro){
    x=xcarro;
    y=ycarro;
    largo = largoCarro;
    alto = altoCarro;
  }
  void pintar(){
    fill(203,203,203);
    stroke(153);
    rect(x, y, largo, alto);
    if (x>500){
      x = (0 - largo);
      velocidad = random(1, 10);
    }
  }
  
  void irAcelerao(){
    x=x+velocidad;
  }  
}
