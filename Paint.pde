 boolean Linea = false;
boolean circulo = false;
boolean triangulo = false;
boolean cuadrado = false;
boolean pentagono = false;
boolean LineaLibre = false;
boolean leftButton = false;
int ancho = 1;
color color0 = color(0,0,0);
int fr=0;
PImage[] frames = new PImage[20];

//Variable Linea
 boolean Linea0 = false;
 Linea L1;
 
 //Variable Circulo
 boolean Circulo0 = false;
 Elipse C1;
 
 //Variable Cuadrado
 boolean Cuadrado0 = false;
 Poligono Cu1;
 
 //viariable Triangulo
 boolean Triangulo0 = false;
 Poligono T1;
 
 //viariable Pentagono
 boolean Pentagono0 = false;
 Poligono P1;
 
void setup(){
 
  
  
 size(600,600);
 background(225);
 strokeWeight(100);
 stroke(#87d3f8);
 line(50,0,50,600);
 strokeWeight(1);
 stroke(0);
 frameRate(1000);
 
 //Botones
 line(0,100,100,100);
 line(0,200,100,200);
 line(0,300,100,300);
 line(0,400,100,400);
 line(0,500,100,500);
 line(100,0,100,600);
 
 fill(225);
 rect(100,0,50,50);
 rect(150,0,50,50);
 rect(200,0,50,50);
 fill(255,0,0);
 rect(250,0,50,50);
 fill(0,255,0);
 rect(300,0,50,50);
 fill(0,0,255);
 rect(350,0,50,50);
 fill(255,255,0);
 rect(400,0,50,50);
 fill(0);
 rect(450,0,50,50);

 strokeWeight(1);
 line(110,40,140,10);
 strokeWeight(5);
 line(160,40,190,10);
 strokeWeight(10);
 line(210,40,240,10);
 
 
 strokeWeight(1);
 line(20,80,80,20);
 fill(#87d3f8);
 ellipse(50,150,80,80);
 rect(20,220,60,60);
 triangle(20,380,50,320,80,380);
  for(int x=1;x<=5;x++){
   float div=360/5;
   line(50+40*cos(radians(x*div-90)),450+40*sin(radians(x*div-90)),50+40*cos(radians((x+1)*div-90)),450+40*sin(radians((x+1)*div-90)));
 }
 
 for(float x=0.1;x<=80;x=x+0.1){
   point(10+x,550+10*sin(x/13));
 }
//RESET
 fill(155);
 rect(500,0,100,50);
 fill(0);
 text("BORRAR",525,30);
 


 //Linea
  Vector2 tempL = new Vector2(width, height);
  L1 = new Linea(0, 0, tempL.getX(), tempL.getY());
  
 //Circulo
  Vector2 tempC = new Vector2(width, height);
  C1 = new Elipse(0,0,tempC.getX(), tempC.getY());
  
 //Cuadrado
 Vector2 tempCua = new Vector2(width,height);
 Cu1 = new Poligono(0,0,tempCua.getX(),tempCua.getY(),4,45);
 
 //Triangulo
 Vector2 tempT = new Vector2(width,height);
 T1 = new Poligono(0,0,tempT.getX(),tempT.getY(),3,270);
 
 //Pentagono
 Vector2 tempP = new Vector2(width,height);
 P1 = new Poligono(0,0,tempP.getX(),tempP.getY(),5,270);
}



void draw(){
  if(mouseX>500 && mouseY<50){
    Linea = false;
    circulo = false;
    triangulo = false;
    cuadrado = false;
    pentagono = false;
    LineaLibre = false;
  }
  if(mouseX>100 ){
    if(LineaLibre){
      if(mousePressed){
        
        noStroke();
        stroke(color0);
        ellipse(mouseX,mouseY,ancho,ancho);
        dibujarMenu();
      }
    }
    
   if(Linea){
        //dibujarFondo();
        if(fr<19){
    if(fr !=0 && frames[fr-1]!=null){
    image(frames[fr-1],100,50);
    }
  }
  else{
    if(frames[fr]!=null){
    image(frames[fr],100,50);
    }
  }
        
        
        if(Linea0){
          strokeWeight(ancho);
          L1.setColor(color0);
          L1.dibujar();
        }
        dibujarMenu();
   } 
   
   if(circulo){
    // dibujarFondo();
    if(fr<19){
    if(fr !=0 && frames[fr-1]!=null){
    image(frames[fr-1],100,50);
    }
  }
  else{
    if(frames[fr]!=null){
    image(frames[fr],100,50);
    }
  }
    
    
     if(Circulo0){
       strokeWeight(ancho);
       C1.setColor(color0);
       C1.dibujar();
     }
     dibujarMenu();
   }
    
    if(cuadrado){
      
      //Fondo
     //dibujarFondo();
     if(fr<19){
    if(fr !=0 && frames[fr-1]!=null){
    image(frames[fr-1],100,50);
    }
  }
  else{
    if(frames[fr]!=null){
    image(frames[fr],100,50);
    }
  }
     
     
     //Figura
     if(Cuadrado0){
       strokeWeight(ancho);
       Cu1.setColor(color0);
     Cu1.dibujar();
     }
     
     //Menú
     dibujarMenu();
    }
    
 if(triangulo){
     //Fondo
    // dibujarFondo();
    if(fr<19){
    if(fr !=0 && frames[fr-1]!=null){
    image(frames[fr-1],100,50);
    }
  }
  else{
    if(frames[fr]!=null){
    image(frames[fr],100,50);
    }
  }
    
     
     //Figura
     if(Triangulo0){
       strokeWeight(ancho);
       T1.setColor(color0);
     T1.dibujar();
     }
     
     //Menú
     dibujarMenu();
  }
    
    if(pentagono){
     //Fondo
     
   //  dibujarFondo();
   if(fr<19){
    if(fr !=0 && frames[fr-1]!=null){
    image(frames[fr-1],100,50);
    }
  }
  else{
    if(frames[fr]!=null){
    image(frames[fr],100,50);
    }
  }
   
     
     //Figura
     if(Pentagono0){
       strokeWeight(ancho);
          P1.setColor(color0);
          P1.dibujar();
     }
     
     //Menú
     dibujarMenu();
  }
    
 }
}

void keyPressed (){
  if(key=='s'){
    if(fr!=0){
    frames[fr-1].save("Pantallazo.jpg");
    }
  }
  if(key=='z'){
    if(fr!=0)
    fr--;
  }
  
  
}

void mousePressed() {  
  
  if(mouseX>100){
    if(Linea){
      if(!Linea0){
        Linea0=true;
        Circulo0=false;
        Cuadrado0=false;
        Triangulo0=false;
        Pentagono0=false;
      }
      if (mouseButton==LEFT) {
        
        Vector2 tempL = new Vector2(mouseX, mouseY);
        L1.setStart(tempL);
        L1.setEnd(tempL);
      }
    }
    
    if(circulo){
      if(!Circulo0){
        Linea0=false;
        Circulo0=true;
        Cuadrado0=false;
        Triangulo0=false;
        Pentagono0=false;
      }
      if (mouseButton==LEFT) {
       
        Vector2 tempC = new Vector2(mouseX, mouseY);
        C1.setCentro(tempC);
        C1.setRadio(tempC);
      }
    }
    
    if(cuadrado){
      if(!Cuadrado0){
        Linea0=false;
        Circulo0=false;
        Cuadrado0=true;
        Triangulo0=false;
        Pentagono0=false;
      }
      if(mouseButton==LEFT){
      
        Vector2 tempCua = new Vector2(mouseX,mouseY);
        Cu1.setCentro(tempCua);
        Cu1.setRadio(tempCua);
      }
    }
    
    if(triangulo){
      if(!Triangulo0){
        Linea0=false;
        Circulo0=false;
        Cuadrado0=false;
        Triangulo0=true;
        Pentagono0=false;
      }
      if(mouseButton==LEFT){
        Vector2 tempT = new Vector2(mouseX,mouseY);
        T1.setCentro(tempT);
        T1.setRadio(tempT);
      }
    }
    
    if(pentagono){
      if(!Pentagono0){
        Linea0=false;
        Circulo0=false;
        Cuadrado0=false;
        Triangulo0=false;
        Pentagono0=true;
      }
      if(mouseButton==LEFT){
        Vector2 tempP = new Vector2(mouseX,mouseY);
        P1.setCentro(tempP);
        P1.setRadio(tempP);
      }
    }
  }
  //Borrar
  if( mouseX>500 && mouseY<50  && mouseX<600 && mouseY>0 && mousePressed == true){
    strokeWeight(1);
    fill(155);
 rect(500,0,100,50);
 fill(0);
 text("BORRAR",525,30);
 for(int x=1;x<=5;x++){
   float div=360/5;
   float angulo= radians(x*div-90);
   float angulo2= radians((x+1)*div-90);
   line(50+40*cos(angulo),450+40*sin(angulo),50+40*cos(angulo2),450+40*sin(angulo2));
   
 }
    noStroke();
    fill(225);
    rect(101,51,399,600);
    rect(500,51,100,549);
    Linea = false;
    circulo = false;
    triangulo = false;
    cuadrado = false;
    pentagono = false;
    LineaLibre = false;
  }
  //Linea recta
  if( mouseY>0 && mouseX<100 && mouseY<100){
    Linea = true;
    circulo = false;
    triangulo = false;
    cuadrado = false;
    pentagono = false;
    LineaLibre = false;
    
  } 
  // Circulo
  if(mouseY>100 && mouseX<100 && mouseY<200){
    Linea = false;
    circulo = true;
    triangulo = false;
    cuadrado = false;
    pentagono = false;
    LineaLibre = false;
    
  } 
  //Cuadrado
  if( mouseY>200 && mouseX<100 && mouseY<300){
    Linea = false;
    circulo = false;
    triangulo = false;
    cuadrado = true;
    pentagono = false;
    LineaLibre = false;
    
  } 
  //Triangulo
  if( mouseY>300 && mouseX<100 && mouseY<400){
    Linea = false;
    circulo = false;
    triangulo = true;
    cuadrado = false;
    pentagono = false;
    LineaLibre = false;
    
  } 
  //Pentagono
  if( mouseY>400 && mouseX<100 && mouseY<500){
    Linea = false;
    circulo = false;
    triangulo = false;
    cuadrado = false;
    pentagono = true;
    LineaLibre = false;
    
  } 
  //Linea Libre
  if(mouseY>500 && mouseX<100 && mouseY<600){
    Linea = false;
    circulo = false;
    triangulo = false;
    cuadrado = false;
    pentagono = false;
    LineaLibre = true;
    
  } 
  
  if(mouseY<50 && mouseX>100 && mouseX<150){
     ancho = 1;
   }
   if(mouseY<50 && mouseX>150 && mouseX<200){
     ancho = 5;
   }
   if(mouseY<50 && mouseX>200 && mouseX<250){
     ancho = 10;
   }
   if(mouseY<50 && mouseX>250 && mouseX<300){
     color0 = color(255,0,0);
   }
   if(mouseY<50 && mouseX>300 && mouseX<350){
     color0 = color(0,255,0);
   }
   if(mouseY<50 && mouseX>350 && mouseX<400){
     color0 = color(0,0,255);
   }
   if(mouseY<50 && mouseX>400 && mouseX<450){
     color0 = color(255,255,0);
   }
   if(mouseY<50 && mouseX>450 && mouseX<500){
     color0 = color(0,0,0);
   }
}

void mouseDragged() {
  if(mouseX>100){
    //Linea
     if(Linea){
       if (mouseButton==LEFT) {
      
      Vector2 tempL = new Vector2(mouseX, mouseY);
      L1.setEnd(tempL);
        }
    } 
    //Circulo
    if(circulo){
       if (mouseButton==LEFT) {
       
      Vector2 tempC = new Vector2(mouseX, mouseY);
      C1.setRadio(tempC);
        }
    }
    //Cuadrado
    if(cuadrado){
      if (mouseButton==LEFT){
     
        Vector2 tempCua = new Vector2(mouseX,mouseY);
        Cu1.setRadio(tempCua);
      }
    }
    
    //Triangulo
    if(triangulo){
      if(mouseButton==LEFT){
        Vector2 tempT = new Vector2(mouseX,mouseY);
        T1.setRadio(tempT);
      }
    }
    
    //Pentagono
    if(pentagono){
      if(mouseButton==LEFT){
        Vector2 tempP = new Vector2(mouseX,mouseY);
        P1.setRadio(tempP);
      }
    }
    
  }
  
}

void dibujarFondo(){
       noStroke();
     fill(225);
     rect(101,0,399,600);
     rect(500,51,100,549);
     
}

void dibujarMenu(){
  strokeWeight(100);
 stroke(#87d3f8);
 line(50,0,50,600);
 strokeWeight(1);
 stroke(0);
 
 line(0,100,100,100);
 line(0,200,100,200);
 line(0,300,100,300);
 line(0,400,100,400);
 line(0,500,100,500);
 line(100,0,100,600);

 line(20,80,80,20);
 fill(#87d3f8);
 ellipse(50,150,80,80);
 rect(20,220,60,60);
 triangle(20,380,50,320,80,380);
  for(int x=1;x<=5;x++){
   float div=360/5;
   line(50+40*cos(radians(x*div-90)),450+40*sin(radians(x*div-90)),50+40*cos(radians((x+1)*div-90)),450+40*sin(radians((x+1)*div-90)));
   fill(155);
 rect(500,0,100,50);
 fill(0);
 text("BORRAR",525,30);
 }
 
     for(float x=0.1;x<=80;x=x+0.1){
       point(10+x,550+10*sin(x/13));
     }
      fill(225);
 rect(100,0,50,50);
 rect(150,0,50,50);
 rect(200,0,50,50);
 fill(255,0,0);
 rect(250,0,50,50);
 fill(0,255,0);
 rect(300,0,50,50);
 fill(0,0,255);
 rect(350,0,50,50);
 fill(255,255,0);
 rect(400,0,50,50);
 fill(0);
 rect(450,0,50,50);

 strokeWeight(1);
 line(110,40,140,10);
 strokeWeight(5);
 line(160,40,190,10);
 strokeWeight(10);
 line(210,40,240,10);
     
}
void mouseReleased(){
  saveFrame("Frame.jpg");
  PImage temporal = loadImage("Frame.jpg");
  if(fr!=19){
    frames[fr] = temporal.get(100,50,500,550);
    fr++;
    print( fr);
  }
  else{
    for(int op=0;op<=18;op++){
      frames[op]=frames[op+1];
    }
    frames[fr] = loadImage("Frame.jpg");
    frames[fr] = frames[fr].get(100,50,500,550);
  }
}
