PImage Pasto, Logo, Gusanito, Inicio, Logo2, Bimo, HotCake, Gotas, Espada, Mochila, Gonter, M, Gomi;
PFont Fuente;
int f, up, a;

Float y = 50.0;
Float velocidad = 3.0;
Float Radio = 55.0;

void setup (){
size (650,650);
println (mouseX, mouseY);

 f = frameCount;
 up++;
 a--;
 
Fuente = loadFont ("AgencyFB-Bold-48.vlw");
Pasto = loadImage ("Pasto.png");
Inicio = loadImage ("Inicio.jpg");
Logo2 = loadImage ("Logo 2.png");
Gusanito = loadImage ("Gusanito.png");
Bimo = loadImage ("Bimo.jpg");
HotCake = loadImage ("HotCake.jpg");
Gotas = loadImage ("Gotas.png");
Espada = loadImage ("Espada.png");
Mochila = loadImage ("Mochila.png");
Gonter = loadImage ("Gonter.jpg");
M = loadImage ("M.png");
Gomi = loadImage ("Gomi.png");

//Pantalla 0:
image(Inicio, 0, 0, height, width);
Logo2.resize (450,300);
image(Logo2, 100,170);
}

void draw (){ 
textFont (Fuente, 40);

if (millis ()> 8000 && millis ()< 15000){
//Pantalla 1: Fin
background (255);
image(Espada, frameCount*2, 0);
image(Mochila, 0, 0, height, width);
 //Texto:
fill (0);
textSize (85);
text ("Finn Mertens", 100, 310);
textSize (40);
text ("como Fin el Humano",110, 345);
}

if (millis ()> 15000 && millis ()< 25000){
//Pantalla 2: Jake
image (HotCake, 0, 0, height, width);
image (Gotas, 0, frameCount*5);
 //Texto:
fill (0);
textSize (90);
text ("Jake el Perro", 90, 310);
textSize (40);
text ("como Jake el Perro",110, 350);
}

if (millis ()> 25000 && millis ()< 35000){
//Pantalla 3: Bimo repato camaras.
image (Bimo, 0, 0, height, width);
//Texto:
fill (40,173,47);
textSize (90);
text ("Produccion:",80, 200);
textSize (90);
text ("Be More", 90, 310);
textSize (40);
text ("en edicion",110, 360);
}

if (millis ()> 35000 && millis ()< 45000){
//Pantalla 4
image(Gonter, 0,0, height, width);
 //Texto:
fill (0);
textSize (80);
text ("Segundarios:", 80, 110);
textSize (30);
text ("Be More como BMO",85, 200);
text ("Marceline Abadeer como Marceline",85, 250);
text ("Bonnibel Bubblegum como Dulce Princesa",85, 300);
text ("Gunter como Gunter el Pingüino", 85, 350);
text ("Simon Petrikov como el Rey Helado", 75, 400);
text ("Lady Arcoiris como Arcoiris", 85, 450);
text ("Limonagrio como Conde de Limonagrio ", 85, 500);
text ("Mentita como El Mayordomo Mentita" , 85, 550);
text ("Tronquitos como Tronquitos la Elefanta", 85, 600);
}

if (millis ()> 45000 && millis ()< 55000){
//Pantalla 5:
background (57,39,39);
image (M, 0, 0, height, width);
fill (255);
textSize (80);
text ("Musica:", 80, 250);
textSize (30);
text ("Marceline Abadeer",85, 300);
text ("Simon Petrikov",85, 350);
text ("Be More",85, 400);
}
  
if (millis ()> 55000 && millis ()< 75000){
//Pantalla final:
background (209);
Logo = loadImage ("Logo.png");
Logo.resize (350,200);
image (Logo, 160,230);
//Texto:
textFont (Fuente, 50);
fill(random(300), random  (300), random (300));
text ("R.V Production",180,480);
}

if (millis ()> 75000 && millis ()< 80000){
//Pantalla extra:
background (50);
Gomi.resize (250, 250);
image (Gomi,160,160);
fill (227, 154, 44);
text ("Aprieta la T de Tocino para una sorpresa",80,450);  
}

if (keyPressed){
   if (key == 't' || key == 'T');
{
frameCount = 0;
up = 0;
a = 0;
}

}
}
