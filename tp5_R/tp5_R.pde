//https://youtu.be/wKJP6QFnUgg

PImage intr, inic, gan, per, cred;

int x;
int y;
int vex;
int vey;
int yb1;
int yb2;
int n;
int n2;  

Juego jueg;
Pantallas pan;
GanaryPerder gape;
Contadores cont;

import ddf.minim.*;

Minim minim;
Minim minimp;
AudioPlayer mus, pev;

void setup (){
size(900,600);

minim = new Minim(this);
minimp = new Minim(this);
mus = minim. loadFile ("Musica.mp3");
pev = minimp. loadFile ("PV.wav");

inic = loadImage ("Inicio.png");
intr = loadImage ("Intruciones.png");
gan = loadImage ("Ganaste.png");
per = loadImage ("Perdiste.png");
cred = loadImage ("Creditos.png");

jueg = new Juego();
pan = new Pantallas();
gape = new GanaryPerder();
cont = new Contadores();

x= 100;
y= 100;
vex= 3;
vey= 3;
yb1= 3;
yb2= 3;
n= 0;
n2= 3;

pan.inicio();
}



void draw(){

mus.play();

jueg.bamp();

if (keyPressed && (key== 'p')){
pan. intrucciones();
pev.play();
}
 
if (key == 'j' ){
jueg.juego();
jueg.pem();
}


if(keyPressed && (key== 'c')){
pan.creditos();
pev.rewind();
pev.play();
}

if (key== 'r'){
jueg.juego();
jueg.pem();
pev.play();
mus.play();
}

if (keyPressed && (key== 'r')){
n= 0;
n2= 3;
}
}

void keyPressed(){
if (key == 's'){ 
yb1= yb1+3;
}else if (key == 'w'){ 
yb1= yb1-3;
}
}
