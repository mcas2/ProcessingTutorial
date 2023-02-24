int pepeX=250;
int pepeY=500;
int cocheX=0;
ArrayList<Carro> miCarroList;


Pepon mipepon = new Pepon(250, 500, 25);
//Carro micarro = new Carro(0,50);

void setup(){
  size(500,500);
  miCarroList= new ArrayList<Carro>();
       for (int i = 0; i < 5; i++) {
        //float randomx = random(0, 450);
        float randomy = random(0, 450);
        Carro micarro = new Carro(250,randomy,50,10);
        Carro tucarro = new Carro(-250,randomy,50,10);
        Carro elcamion = new Carro(0,randomy,100,10);
        miCarroList.add(micarro);
        miCarroList.add(tucarro);
        miCarroList.add(elcamion);
  } 
}

void draw(){
  background(255);
    boolean estaParranda = true; //<>//
    for (int i = 0; i < 5; i++) {
     Carro auxCar = miCarroList.get(i);
     if (isColliding(auxCar.x, auxCar.y, auxCar.largo, auxCar.alto, mipepon.x, mipepon.y, mipepon.radio)){
       estaParranda = false; //<>//
     }
    }
    
    if (!estaParranda){ //<>//
      mipepon.muerto();
    }
    else{
      sacarElCarro(); //<>//
      mipepon.vivo();
      mipepon.mover();
    }
}


 void sacarElCarro(){
    for (int i = 0; i < miCarroList.size(); i++) {
    Carro micarro = miCarroList.get(i);
    micarro.pintar();
    micarro.irAcelerao();
    if (micarro.x>250){
      Carro tucarro = miCarroList.get(i);
      tucarro.pintar();
      tucarro.muAcelerao();
    }
  }
}



boolean isColliding(float xCarro, float yCarro, float largoCarro, float altoCarro, float xPepon, float yPepon, float radio) {
  // Calculamos la distancia entre el centro de la circunferencia y el rectángulo
  float distX = abs(xPepon - xCarro-largoCarro/2);
  float distY = abs(yPepon - yCarro-altoCarro/2);

  // Si la distancia es mayor que el radio de la circunferencia más la mitad del ancho o alto del rectángulo,
  // no hay colisión
  if (distX > (radio + largoCarro/2)) { return false; }
  if (distY > (radio + altoCarro/2)) { return false; }

  // Si la distancia es menor o igual al radio de la circunferencia, hay colisión
  if (distX <= largoCarro/2) { return true; } 
  if (distY <= altoCarro/2) { return true; }

  // Calculamos la distancia desde la esquina del rectángulo más cercana al centro de la circunferencia
  // a la posición del centro de la circunferencia
  float dx = distX - largoCarro/2;
  float dy = distY - altoCarro/2;

  // Si la distancia al cuadrado es menor o igual al radio de la circunferencia al cuadrado, hay colisión
  return (dx*dx + dy*dy <= radio*radio);
}
