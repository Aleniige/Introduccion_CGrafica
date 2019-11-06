class Poligono {
  
  private Vector2 centro;
  private Vector2 radio;
  private int vertices;
  private int angulo;
  private color color0;
  
  Poligono(int x1, int y1, int x2, int y2, int v, int a){
    centro = new Vector2(x1,y1);
    radio =  new Vector2(x2,y2);
    vertices = v;
    angulo = a;
  }
  
  Vector2 getCentro(){
    return centro;
  }
  
  Vector2 gerRadio(){
    return radio;
  }
  
  int getVertices(){
    return vertices;
  }
  
  int getAngulo(){
    return angulo;
  }
  
  void setCentro(Vector2 c){
    centro = c;
  }
  
  void setRadio(Vector2 r){
    radio = r;
  }
  
  void setVertices(int v){
    vertices = v;
  }
  
  void setAngulo(int a){
    angulo = a;
  }
   void setColor(color c){
    color0 = color(c);
  }
  
  
  void dibujar(){
    float cx = centro.getX();
    float cy = centro.getY();
    float rx = radio.getX();
    float ry = radio.getY();
    int v = getVertices();
    int a = angulo;
    
    for(int x=1;x<=v;x++){
      float div=360/v;
      stroke(color0);
      line(cx+(rx-cx)*cos(radians(x*div-a)),cy+(ry-cy)*sin(radians(x*div-a)),cx+(rx-cx)*cos(radians((x+1)*div-a)),cy+(ry-cy)*sin(radians((x+1)*div-a)));
    }
 }
}
