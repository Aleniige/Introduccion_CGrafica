PImage Col;
color c = 255;
void setup(){
size(340,360);
Col= loadImage("Col.png");
}

void draw(){
  image(Col,0,0);
  noStroke();
  fill(c);
  rect(0,340,340,20);
}

void mousePressed(){
  c = get(mouseX,mouseY);
}
