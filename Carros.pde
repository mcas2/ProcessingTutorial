class Carro {
  float y;
  float x;
  float largo;
  float alto;
  
  Carro(float xcarro, float ycarro, float largoCarro, float altoCarro){
    x=xcarro;
    y=ycarro;
    largo = largoCarro;
    alto = altoCarro;
  }
  void pintar(){
    rect(x, y, largo, alto);
  }
  
  void irAcelerao(){
    float randomv = random(2);
    x=x+randomv;
  }
    void muAcelerao(){
    float randomv = random(5);
    x=x+randomv;
  }

}
