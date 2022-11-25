class Juego{


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

//mobimiento de pelota
if (x>width || x<1){
vex= vex*-1;
}

if (y<height-10 || x<1){
vey= vey*-1;
}

} 
}
