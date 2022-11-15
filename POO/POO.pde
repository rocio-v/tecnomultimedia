//Para mi juego realizare pong contematica de halloween, en el cual tendras 3 vidas y serra infinito//

PImage Fondo, Instrucciones, Inicio, Fantasma, Fan1, Fan2, Bolita, Boton1, Creditos;
//Inicio In;

void setup (){
size (900,600);
Fondo = loadImage ("Fondo.jpg"); // 3
Boton1 = loadImage ("Boton1.png");
Inicio = loadImage ("Inicio.jpg"); //1
Instrucciones = loadImage (".png"); // 2
Fantasma = loadImage ("Fantasma.png"); //4
Fan1 = loadImage ("Fan1.png"); //5
Fan2 = loadImage ("Fan2.png"); //5
Bolita = loadImage ("Bolita"); // 4
Creditos= loadImage (".png"); //6

//In = new Inicio();

}

void draw (){
//image(Fondo, 0, 0, 900, 600);

//if (millis ()> 0 && mousePressed (evento)){
image(Inicio, 0, 0, 900, 600);

//cambio de color con cubo aqui.
image(Boton1, 350, 400, 200, 150);

//}

//In. Inicio();

}
