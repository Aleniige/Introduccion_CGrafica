class Elipse {
  private Vector2 centro;
  private Vector2 radio;
  
  Elipse(int x1, int y1, int x2, int y2){
    centro = new Vector2(x1,y1);
    radio = new Vector2(x2,y2);
  }
  
  Vector2 getCentro(){
    return centro;
  }
  
  Vector2 getRadio(){
    return radio;
  }
  
  void setCentro(Vector2 c){
    centro = c;
  }
  
  void setRadio(Vector2 r){
    radio = r;
  }
  
  void setColor(color c){
    color0 = color(c);
  }
  
  void dibujar(){
    float cx = centro.getX();
    float cy = centro.getY();
    float rx = radio.getX();
    float ry = radio.getY();
    
    for(float op = 0.1; op <= 360; op+=0.1){
      stroke(color0);
      if(cx+((abs(rx-cx))*cos(radians(op))) > 100){
      point(cx+((abs(rx-cx))*cos(radians(op))),cy-(abs(ry-cy)*sin(radians(op))));
      }
    }
    
  }
  

}
