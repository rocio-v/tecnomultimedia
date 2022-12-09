 class Juego{

void juego(){
background(211);
jueg.Pelota();
jueg.Barras();
jueg.bamc();
cont. PV();
gape.GP();
}

void Pelota(){
//pelota
noStroke();
fill(0);
ellipse ( x, y,45,20);
}

void pem(){
x=x+vex;
y=y+vey;  

if (x>width || x<0){
vex= vex*-1;
n2= n2-1;
}

if (y<height || y<0){
vey= vey*-1;
}
}
 
void Barras(){

fill(147);
rect (width-50,yb1, 30,180);

fill(0);
rect (10,yb2, 40,600);
}

void bamp(){

if (x>width-50 && y>yb1 && y< yb1+180 ){
vex=vex*-1;
n= n+1;
}
}

void bamc(){
if (x<40 && y>yb2 && y<yb2 +180){
vex=vex*-1;
}
}
}
