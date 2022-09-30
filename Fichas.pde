class Fichas{
  
 float x, y, t;
  boolean drag, Mov;
  
  Fichas(){
    x = random(100, width);
    y = (50);
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
      Mov = true;
    else
      Mov = false;
    
    println( "drag: " + drag );
    println( "Mov: " + Mov );
}
//--------------------------------------------
  void moverConDrag(){
    if( drag && Mov ){
      x = mouseX;
      y = mouseY;
}
}
//--------------------------------------------
  void dibujar(){
    pushStyle();
    fill(130, 198, 229);
    circle( x, y, t );
    popStyle();
}  
  float calcularDistancia(){
    return 7;
} 

}
