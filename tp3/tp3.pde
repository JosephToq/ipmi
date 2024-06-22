//https://www.youtube.com/watch?v=96eS-RhTyTQ
PImage opart;

void setup(){
  size(800,400);
  opart = loadImage("opart.jpg");
}

void draw(){
  background(0);
  image(opart,0,0,400,400);
  cuadradosycirculos();
  fill(255);
  textAlign(CENTER);
  textSize(18);
  text("Presione cualquier tecla para reiniciar",400,380,120,100);
  text("Usa el mouse para aumentar la cantidad de figuras",400,55,120,100);
}
