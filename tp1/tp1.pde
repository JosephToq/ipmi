//Variable apra guardar la imagen
PImage paisaje;

void setup (){
  //tamano de la pantalla
  size (800,400);
  //cargamos la imagen en la variable
  paisaje = loadImage("paisaje.jpg");
  
}


void draw(){
  
  //variable para los colores
  color c;
  //sin bordes
    //noStroke();
  
  //fondo
    background(255,255,255);
  //cielo
   c=color(45,215,245,140);
   fill(c);
   rect(400,156,151,200,0,50,50,50);
  //montana fondo
  c = color(9,46,152);
  fill(c);
  quad(644,171,664,112,720,124,697,201);
  quad(738,68,800,62,800,197,697,201);
  
  //arbol
    //hojas
     //noStroke();
     c=color(43,106,42);
     fill(c);
     triangle(434,0,340,164,530,164);
    //tronco
     stroke(1);
     c = color(83,54,1);
     fill(c);
    quad(421,276,445,276,434,18,434,18);
    //hojas
     noStroke();
     c=color(43,106,42);
     fill(c);
     triangle(434,80,380,180,488,180);
  
  
  //grupo de montanas
    noStroke();
    c=color(15,112,93);
    fill(c);
    quad(521,289,552,155,578,155,630,308);
    triangle(589,129,528,288,669,309);
    triangle(620,120,579,294,714,324);
    triangle(640,129,630,450,790,500);
    triangle(697,148,667,176,718,187);
    quad(649,160,651,251,753,293,775,192);
 
  
  //montana derecha
    noStroke();
    c=color(15,133,5);
    fill(c);
    triangle(625,323,800,360,800,133);
  
  //piso
    //noStroke();
    c=color(154,196,76);
    fill(c);
    quad(398,255,398,400,800,400,800,328);
    
 //dubujamos nubes
    c=color(219,250,255);
    fill(c);
    
    ellipse(500, 20, 50, 50);
    ellipse(530, 20, 60, 60);
    ellipse(580, 10, 70, 70);
    ellipse(520, 10, 50, 50);
    ellipse(550, 40, 60, 60);
    ellipse(570, 40, 60, 60);
    ellipse(500, 60, 50, 50);
    
    c=color(152,238,254,180);
    fill(c);
    ellipse(700, 30, 50, 50);
    ellipse(730, 30, 60, 60);
    ellipse(780, 20, 70, 70);
    ellipse(720, 20, 50, 50);
    ellipse(750, 60, 60, 60);
    ellipse(770, 60, 60, 60);
    ellipse(700, 70, 50, 50);
    
    
    c=color(219,250,255,160);
    fill(c);
    ellipse(560, 150, 50, 50);
    ellipse(590, 150, 60, 60);
    ellipse(640, 140, 70, 70);
    ellipse(580, 140, 50, 50);
    ellipse(590, 170, 60, 60);
    ellipse(630, 170, 60, 60);
    ellipse(560, 190, 50, 50);
  
  //caminito
    c=color(201,157,40,180);
    fill(c);
    triangle(476,269,443,400,497,400);
  //ubicamos nbuestra imagen en el lienzo y la dibuaj e programa
  image(paisaje,0,0);
  
  
  
  
  
  
  
  
  
  
  
  //nos muetra la posicion del mouse en consoloa
  println(mouseX,mouseY);
}
