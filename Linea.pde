class Linea {
  private Vector2 m_start; 
  private Vector2 m_end; 
  
  Linea(int x1, int y1, int x2, int y2) {
    m_start = new Vector2(x1, y1);
    m_end = new Vector2(x2, y2);
  }


  Vector2 getStart() {
    return m_start;
  }

  Vector2 getEnd() {
    return m_end;
  }

  
  void setStart(Vector2 s) {
    m_start = s;
  }

  void setEnd(Vector2 e) {
    m_end = e;
  }

 void setColor(color c){
    color0 = color(c);
  }
  
  float getSlope() {
    int x1 = m_start.getX();
    int y1 = m_start.getY(); 
    int x2 = m_end.getX();
    int y2 = m_end.getY(); 
    if (x1 != x2) {
      return (y2-y1)/(float)(x2-x1);
    } else {
      return Float.POSITIVE_INFINITY;
    }
  }

  void dibujar() {
    float x1 = m_start.getX();
    float y1 = m_start.getY(); 
    float x2 = m_end.getX();
    float y2 = m_end.getY(); 

    if (x1>x2) {
      float x1Temp = x1;
      float y1Temp = y1;
      x1 = x2;
      x2 = x1Temp;
      y1 = y2;
      y2 = y1Temp;
    }

    float slope = getSlope();
    if (abs(slope)>=1) {
      if (slope != Float.POSITIVE_INFINITY) {
        while (x1<=x2) {
          if (slope>0) {            
            x1 += 1/slope;
            y1 += 1;
          } else {
            x1 -= 1/slope;        
            y1 -= 1;
          }
          plumilla((int)x1, (int)y1);
        }
      } else { 
        y1 += 1;
      }
    } else {
      while (x1<=x2) {
        x1 += 1;
        y1 += slope;
        plumilla((int)x1, (int)y1);
      }
    }
    
    
    
  }
  
  
  void plumilla(int x, int y) {
      stroke(color0);
      point(x, y);    
  }
}
