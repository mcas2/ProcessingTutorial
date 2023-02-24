class Pepon {
  float x;
  float y;
  float radio;

  Pepon(float xpepon, float ypepon, float radioPepon) {
   x=xpepon;
   y=ypepon;
   radio=radioPepon;
  }
  
  void vivo(){
    pintarVivo();  
  }

  void muerto(){
    pintarMuerto();
  }
  
  void mover(){
    if (keyPressed) {
      print(key);
      switch(key){
        case('s'):
          mipepon.y += 10;
          break;
        case('w'):
          mipepon.y -= 10;
          break;
        case('d'):
          mipepon.x += 10;
          break;
        case('a'):
          mipepon.x -= 10;
          break;
      }
    }
  }

  void pintarVivo() {
      fill(203,203,203);
      ellipse(x,y,radio*2,radio*2);
      noStroke();
      fill(0,0,0);
      ellipse(x,y+10,radio/1.2,radio/1.5);
      fill(203,203,203);
      ellipse(x,y+8,radio/1.2,radio/1.5);
      fill(0,0,0);
      ellipse(x-10,y-7,radio/4,radio/4);
      ellipse(x+10,y-7,radio/4,radio/4);
      fill(237,110,148);
      ellipse(x+13,y+5,radio/5,radio/5);
      ellipse(x-13,y+5,radio/5,radio/5);
  }

  void pintarMuerto() {
      fill(255,0,0);
      ellipse(x,y,radio*2,radio*2);
      noStroke();
      fill(0,0,0);
      ellipse(x,y+8,radio/1.2,radio/1.5);
      fill(255,0,0);
      ellipse(x,y+10,radio/1.2,radio/1.5);
      fill(0,0,0);
      ellipse(x-10,y-7,radio/4,radio/4);
      ellipse(x+10,y-7,radio/4,radio/4);
  }
}