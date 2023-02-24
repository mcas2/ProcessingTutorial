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
    ellipse(x,y,radio*2,radio*2);
    
  }
   void muerto(){
    fill(255,0,0);
    ellipse(x,y,radio*2,radio*2);
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
}
