//Paso de antallas con 1,2//

PImage Fondo, Instrucciones, Inicio, Boton1, Creditos, Fin;

//musica
import ddf.minim.*;
Minim minim;
AudioPlayer Player;

//Inicio
int radius= 100;


//Clases
Inicio ini;
Botones boto;
Juego jueg;
Tempo tempo;
Final fin;

//juego
int x;
int y;
int vex;
int vey;
int yb1;
int yb2;
int t;
 
void setup (){
size (900,600);
Fondo = loadImage ("Fondo.jpg"); // 3
Boton1 = loadImage ("Boton1.png");
Inicio = loadImage ("Inicio.jpg"); //1
Instrucciones = loadImage ("Intrucciones.jpg"); // 2
Fin= loadImage ("Fin.jpg"); //6
Creditos= loadImage ("Creditos.jpg"); //6

//Clases
ini = new Inicio();
boto = new Botones();
jueg = new Juego();
tempo = new Tempo();
fin= new Final();

//juego
x= 100;
y= 100;
vex= 3;
vey= 3;
yb1= 3;
yb2= 3;

//musica
minim = new Minim (this);
Player = minim.loadFile ("Final.mp3");
Player = minim.loadFile ("Musica de juego.mp3");

}

void draw (){
//reprducir mucica:

if (keyPressed && (key== '1')){
  ini.inic();
 }

if (keyPressed && (key== '2')){
  ini.instruc();
 }
 
 if (keyPressed && (key== 'j')){
jueg.jue();
}

if (keyPressed && (key== 'c')){
  fin. creditos();
 }
 
if (keyPressed && (key== 'r')){
  jue();
  tempo. tim();
 }
 


 
}

void keyPressed(){//barra movimiento de teclas
if (key == 's'){ 
yb1= yb1+3;
}
if (key == 'w'){ 
yb1= yb1-3;
}
}


void jue(){

//imagen de fondo.
image(Fondo, 0, 0, 900, 600);

//pelota
noStroke();
fill(126,178, 191);
ellipse ( x, y,45,45);
x=x+vex;
y=y+vey;

//barra
fill(175,124,190);
rect (width-50,yb1, 30,180);

//barra de control
fill(126,178, 191);
rect (40,yb2, 30,600);


//barra rebote prinicpal
if (x>width-50 && y>yb1 && y< yb1+180){
vex=vex*-1;
}

//rebote de barra de control
if (x<40 && y>yb2 && y<yb2 +180){
vex=vex*-1;
}

//perdiste
//if (x> width || x<0){
//fin.creditos();
//}



//mobimiento de pelota
if (x>width || x<1){
vex= vex*-1;
}

if (y<height-10 || x<1){
vey= vey*-1;
}

} 
