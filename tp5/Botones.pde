class Botones {

  void boton1(){
//boton.1


//cambio de color con cubo aqui.
 if (keyPressed && (key== 'p')){
   fill (49,99,139);
}else{
fill (172,105,227);
}

//creacion de boton imagen.
ellipse (450,470, radius, radius);
image(Boton1, 350, 400, 200, 150);


  }
}
