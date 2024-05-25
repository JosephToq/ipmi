int pantalla = 1;
int segundos = 0;
PImage H1,H2,H3,H4,H5,H6;
PFont texto;
int movimiento1 = 600;
int movimiento2 = -40;
int movimiento3 = 690;
int movimiento4 = -40;
int movimiento5 = 40;
int velocidad = 5;

void setup (){
  size(640,480);
  H1 = loadImage("h1.jpg");
  H2 = loadImage("h2.jpg");
  H3 = loadImage("h3.jpg");
  H4 = loadImage("h4.jpg");
  H5 = loadImage("h5.jpg");
  H6 = loadImage("reinicio.png");
  
  texto = loadFont("texto.vlw");
  
  textFont(texto);
}

void draw(){
  
  if(segundos == 0){
    image(H1,0,0,width,height);
    textAlign(CENTER);
    textSize(60);
    fill(232,232,232);
    text ("RESIDENT EVIL2", 320,movimiento1);
    movimiento1 = movimiento1 - (velocidad - 1 );
  }else if (segundos == 5){
    image(H2,0,0,width,height);
    fill(232,232,232);
    textAlign(CENTER);
    textSize(40);
    text ("Seremos  Leon S. Kennedy \n un oficial que se va presentar a \nsu primer día de servicio \n pero al llegar a Raccoon city \nse encuentra que todos son zombis", movimiento2,300);
    movimiento2 = movimiento2 + (velocidad + 1);
  }else if(segundos == 15){
    image(H3,0,0,width,height);
    fill(232,232,232);
    textAlign(CENTER);
    text ("Fue lanzado en el año 2018 \n año en el que gano el premio \nal Mejor del espectáculo ", movimiento3,350);
    movimiento3 = movimiento3 - (velocidad + 1);
  }else if(segundos == 25){
    fill(147, 22, 22);
    image(H4,0,0,width,height);
    textAlign(CENTER);
    text ("Se convirtio en el segundo juego más vendido \n de Capcom con mas de tres millones\nde ventas en su primera semana", 300,movimiento4);
    movimiento4 = movimiento4 + (velocidad + 2);
  }else if(segundos == 30){
    fill(255);
    image(H5,0,0,width,height);
    textAlign(CENTER);
    fill(232,232,232,movimiento5);
    textSize(60);
    text ("Te invito a jugarlo", 300,380);
    movimiento5 = movimiento5 + velocidad;
    image(H6,560,20,80,60);
    
  }
  
  
  if(frameCount % 60 == 0){
    segundos = segundos + 1;
  }
  
}

void mouseClicked(){
      if(segundos >= 30 && (mouseX>560)&& (mouseX <560+80)&& (mouseY>20) && (mouseY<20+60)){
      segundos = 0;
      movimiento1 = 600;
      movimiento2 = -40;
      movimiento3 = 690;
      movimiento4 = -40;      
      movimiento5 = 40;
      velocidad = 5;
      }
    }
