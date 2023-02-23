//https://youtu.be/nhDeVMq8EAQ
//-----------------------------------------------------------//  

Pantalla pan; 

import ddf.minim.*;

Minim minim;
Minim minimp;
AudioPlayer mus, pev;
//-----------------------------------------------------------//   
void setup () {
  size(900, 600);

  pan = new Pantalla();

  minim = new Minim(this);
  minimp = new Minim(this);
  mus = minim. loadFile ("Musica.mp3");
  pev = minimp. loadFile ("PV.wav");
}
//-----------------------------------------------------------//   
void draw() {
  mus.play();
  pan.dibujar();
}
//-----------------------------------------------------------//   
void keyPressed() {
  pan.keyPressed();
}
