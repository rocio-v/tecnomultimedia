void setup (){
size (650,650);
background (164, 217, 219, 100);
 strokeWeight (4);
 stroke (180);
 fill (240);
quad (0,500, 650,500, 650,650, 0,650);
}
void draw (){
 strokeWeight (5);
 stroke (62,36,4);
 line (375,175, 500,325); //x1,y1-x2,y2
line (275,175, 150,325);
 strokeWeight (3);
 stroke (220);
 fill (250);
ellipse (325,400, 300,300); //x,y//ancho,alto
ellipse (325,250, 220,220);
 strokeWeight (2);
 stroke (170,0,0);
 fill (220,0,0);
quad (350,175,350,275, 400,275,400,175); //bufanda 1
ellipse (325,160, 160,140); //bufanda 0
 fill (200,0,0);
quad (350,250, 350,275, 400,275,400,250); //bufanda 2
 strokeWeight (2);
 stroke (220);
 fill (250);
ellipse (325,140, 140,140);
 strokeWeight (2);
 stroke (255, 140,0);
 fill (255, 180,0);
quad (200,150, 325,130, 325,160, 325,160); //zanahoria
 strokeWeight (1);
 stroke (0);
 fill (60);
ellipse (280,125, 20,20); //carbon 1
ellipse (355,125, 20,20); //carbon 1,2
ellipse (325,275, 20,20); //carbon 2
ellipse (325,325, 20,20); //carbon 3
ellipse (325,400, 20,20); //carbon 4
// gorro
 strokeWeight (2);
 stroke (10);
 fill (20);
ellipse (325,95, 200,30); //base
rect (275,-2, 100,100); // arriba
// sinta de gorro
 strokeWeight (2);
 stroke (170,0,0);
 fill (220,0,0);
 rect (275,74, 100,25); // sinta
// sinta sombra
 strokeWeight (2);
 stroke (170,0,0);
 fill (200,0,0);
rect (275,74, 25,25); // sinta
// brillos y copos
 strokeWeight (3);
 stroke (220);
 fill (250);
ellipse (284,121, 5,5); //b1
ellipse (359,121, 5,5); //b2
ellipse (278,128, 2,2); //b1.1
ellipse (353,128, 2,2); //b2.1
// copos
fill (240);
ellipse (50,50, 10,10); //c.1
ellipse (150,150, 10,10); //c.2
ellipse (50,350, 10,10); //c.3
ellipse (450,50, 10,10); //c.4
ellipse (600,200, 10,10); //c.5
ellipse (100,450, 10,10); //c.6
ellipse (500,400, 10,10); //c.7
ellipse (600,450, 10,10); //c.8
ellipse (625,25, 10,10); //c.9
ellipse (225,0, 10,10); //c.10
}
