class ju {
  int x;
  int y;
  int vx;
  int vy;
  int yb1;
  int yb2;
  int puntos;
  int puntosV;  
  //-----------------------------------------------------------//   
  ju() {
    x= 100;
    y= 600;
    vx= 3;
    vy= 3;
    yb1= 0;
    yb2= 3;
    puntos= 0;
    puntosV= 3;
  }

  void juego() {
    background(211);
    //-----------------------------------------------------------//
    textSize(25);
    text ("Puntos:", 250, 30);
    text(puntos, 350, 30);

    text("Vidas:", 100, 30);
    text(puntosV, 190, 30);
    //-----------------------------------------------------------//
    noStroke();
    fill(0);
    ellipse ( x, y, 25, 25);
    x=x+vx;
    y=y+vy;

    if (x>900 || x<20) {
      vx=vx*-1;
      puntosV= puntosV-1;
    }

    if (y>600 || y<20) {
      vy=vy*-1;
    }
    //-----------------------------------------------------------//
    fill(147);
    rect (width-50, yb1, 30, 190);

    fill(0);
    rect (0, yb2, 40, 600);

    if (x>width-50 && y>yb1 && y< yb1+180 ) {
      vx=vx*-1;
      puntos= puntos+1;
    }

    if (x<50 && y>yb2 && y<yb2 +900) {
      vx=vx*-1;
    }
    //-----------------------------------------------------------//   
    if (puntos>2) {
      image(pan.gan, 0, 0, width, height);
    } 

    if (puntosV<0) {
      image(pan.per, 0, 0, width, height);
    }
  }
  //-----------------------------------------------------------//   
  void keyPressed() {
    if (key == 's') { 
      yb1= yb1+4;
    } else if (key == 'w') { 
      yb1= yb1-4;
    }

    //-----------------------------------------------------------//   
    if (key == 'j' ) {
      juego();
    } 

    if (key == 's') { 
      juego();
    } else if (key == 'w') { 
      juego();
    }
    //-----------------------------------------------------------//   
    if (key== 'r') {
      juego();
    }

    if (key== 'r') {
      puntos= 0;
      puntosV= 3;
    }
  }
}
