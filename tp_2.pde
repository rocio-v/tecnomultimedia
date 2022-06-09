void setup (){
size (650,650);
background(0);
}

void draw (){ 
translate (width/2, height/2);

//Lineas
 for (int R=0; R<360; R+=20){ 
pushMatrix();
rotate (radians (R));
{
stroke( 0, 0, 0,155);
strokeWeight (0.5);
line (0,0,mouseX, mouseY);
}
popMatrix();
}

//Color de bode
stroke( random(235), random(195), random(247), 150);
strokeWeight (5);

//Circulos
 for (int R=0; R<360; R+=15){  
pushMatrix();
rotate (radians (R));
fill (255, 255, 255, 50);
circle (mouseX, mouseY, 100);
popMatrix();
}

//Cuadrados
fill (0, 0, 0, 300); 
for (int R=8; R<360; R+=20){
pushMatrix();
rotate (radians (R));
rect (mouseX, mouseY, 40, 40);
popMatrix();
}

//Reseteo
if (keyPressed){
 if(key == 'r'){
  reset();
}
}

}

void reset (){
background (0);
}
