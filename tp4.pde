PImage Fondo, Tablero;
Tablero Tab;
//--------------------------------------------

void setup (){
size (800,600);
Tab = new Tablero();
//--------------------------------------------
Fondo = loadImage ("Fondo.jpg");
Tablero = loadImage ("Tablero.png");
}

void draw (){ 
image(Fondo, 0, 0, 800, width);
image(Tablero, 50, 50, 700,500);
//--------------------------------------------
stroke(139, 78, 20);
strokeWeight (10);
line(100, 200, 700, 200);
line(100, 350, 700, 350);
line(300, 100, 300, 500);
line(500, 100, 500, 500);
//--------------------------------------------
stroke(140, 142, 140);
strokeWeight (2);
Tab.actualizar();
Tab.dibujar();

}
