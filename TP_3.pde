//
PImage Fondo, Titulo , VS, Inicio, VSL, Fondo2, Otra, Continua, Pierde, Gana, Explica, Ex, ComoJ, Fondo3, FP, FG, Extra;
String estado;

//Tijera, Papel, Piedra, Lagartija, Spock
PImage [] images = new PImage [6];

int x = 200;
int y = 244;
int xx = 400;
int yy = 70;
int radius = 100;

boolean BotonI= false;

void setup (){
size(800,450);
ellipseMode(RADIUS);
 
estado = "inicio";

images [0] = loadImage("Piedra.png");
images [1] = loadImage ("Papel.png");
images [2] = loadImage ("Tijera.png");
images [3] = loadImage ("Lagartija.png");
images [4] = loadImage ("Spock.png");

Titulo = loadImage ("Titulo.png");
Fondo = loadImage ("Fondo.png");
VS = loadImage ("VS.png");
Inicio = loadImage ("Inicio.png");
VSL = loadImage ("VSL.png");
Fondo2 = loadImage ("Fondo2.png");
Explica = loadImage ("Explica.png");
Gana = loadImage ("Gana.png");
Pierde = loadImage ("Pierde.png");
Continua = loadImage ("Continua.png");
Otra = loadImage ("Otra.png");
Ex = loadImage ("Ex.png");
ComoJ = loadImage ("ComoJ.png");
Fondo3 = loadImage ("Fondo3.png");
FP = loadImage ("FP.png");
FG = loadImage ("FG.png");
Extra = loadImage ("Extra.png");
}

void draw (){ 
  //inicio

if ( estado .equals("inicio")){
image(Fondo, 0, 0, 800, width);
image(Titulo, 100, 50, 600, 80);
 
  //"Boton"
if ((mouseX > x) && (mouseX < x + xx) && (mouseY > y) && (mouseY < y + yy)){
noStroke();
fill (255);
}else{
noStroke();
fill (219);
}
rect (200,244,400,70);
image(Inicio, 250, 250, 300, 60);
}

inicio();

 //Intrucciones
if ( estado.equals("instruccion") ) {
 image(Fondo2, 0, 0, 800, width); 
 image(Explica, 20, 0, 450, 450);
 image (ComoJ, 480, 30, 300, 50);
 image (Ex, 500, 100, 280,280);
 image (Extra, 500,400,250,45);
 }
 
//juego
 else if (mousePressed== true && estado.equals("instrucion")) {
estado = "juego"; 
}
else if ( estado.equals("juego") ){

//image (images [], 0,0);
}
if (mousePressed== true && estado.equals ("juego") ){
estado = "vs";
}

//vs
else if (estado.equals("vs")){
image (VS, 400, 400, 100, 60);

}
   
 }
 

void inicio(){
  if (mousePressed== true && estado.equals("inicio")) {
estado = "instruccion"; 
  }
}
