class Fichas2{
  
 float x, y, t;
  boolean drag, Movi;
  
  Fichas2(){
    x = random(100, width);
    y = (550);
    t = 60;
}
//--------------------------------------------
  void actualizar(){
    if( mousePressed ){
      drag = true;
    }else{
      drag = false;
}
    float d = dist( x, y, mouseX, mouseY );
    if( d < t/2 )
      Movi = true;
    else
      Movi = false;
    
    println( "drag: " + drag );
    println( "Movi: " + Movi );
}
//--------------------------------------------
  void moverConDrag(){
    if( drag && Movi ){
      x = mouseX;
      y = mouseY;
}
}
//--------------------------------------------
  void dibujar(){
    pushStyle();
    fill(242, 188, 51);
    circle( x, y, t );
    popStyle();
}  
  float calcularDistancia(){
    return 8;
}

}
