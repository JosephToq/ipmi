//funcion cuadrados dentro de circulos
float cuadradoincirculo(float tam){
  float ladorect =sqrt((tam * tam)/2);
  return ladorect;
}

//variable para incrementar lso cuadrados y circulos
int cant = 2;

void mousePressed(){
  cant += 1;  // Incrementar la cantidad de figuras cada vez que se presiona el mouse
}

void keyPressed(){
  cant = 2;
}

//dist para el color de los circulos y cuadrados

//funcion apra crear los cuadrados y circulos usando for
void cuadradosycirculos(){
float tamanocuadrado = 400;
//funcion dist para calcular la distancia del maouse al centro de las figuras
float d = dist(mouseX,mouseY,600,200);
//por medio de la funcion map cambiamos los valores de la distancia, la posicion del mouse en x y la posicion del mouse en
//a valores de 0 a 255 para usarlos como color
float colorG = map(d,400,800,255,255);
float colorR = map(mouseX,400, 800, 0, 255);
float colorB =map(mouseY,0,height,0,255);
  for(int i = 0; i <cant ; i++){
    for(int j =0; j<2 ; j ++){
      if(j == 0){
        fill(0);
        rectMode(CENTER);
        rect(600,200,tamanocuadrado,tamanocuadrado);
        }if(j == 1){
         fill(colorR, colorG, colorB);
         ellipse(600,200,tamanocuadrado,tamanocuadrado);
         tamanocuadrado = cuadradoincirculo(tamanocuadrado);
       }
     }
  }
}
