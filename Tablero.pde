class Tablero{

float tamanioX;  
Fichas Ficha1, Ficha2, Ficha3, Ficha4, Ficha5;  
Fichas2 Ficha6, Ficha7, Ficha8, Ficha9, Ficha10;  
//--------------------------------------------
  
Tablero(){
Ficha1 = new Fichas();
Ficha2 = new Fichas();
Ficha3 = new Fichas();
Ficha4 = new Fichas();
Ficha5 = new Fichas();
//--------------------------------------------
Ficha6 = new Fichas2();
Ficha7 = new Fichas2();
Ficha8 = new Fichas2();
Ficha9 = new Fichas2();
Ficha10 = new Fichas2();
  } 
//--------------------------------------------

void actualizar(){
    Ficha1.actualizar();
Ficha1.moverConDrag();    
    Ficha2.actualizar();
Ficha2.moverConDrag();   
    Ficha3.actualizar();
Ficha3.moverConDrag();    
    Ficha4.actualizar();
Ficha4.moverConDrag();    
    Ficha5.actualizar();
Ficha5.moverConDrag();
//--------------------------------------------
    Ficha6.actualizar();
Ficha6.moverConDrag();
    Ficha7.actualizar();
Ficha7.moverConDrag(); 
    Ficha8.actualizar();
Ficha8.moverConDrag();
    Ficha9.actualizar();
Ficha9.moverConDrag();    
    Ficha10.actualizar();
Ficha10.moverConDrag();
}
//--------------------------------------------

void dibujar(){
  Ficha1.dibujar();
  Ficha2.dibujar();
  Ficha3.dibujar();
  Ficha4.dibujar();
  Ficha5.dibujar();
//--------------------------------------------
  Ficha6.dibujar();
  Ficha7.dibujar();
  Ficha8.dibujar();
  Ficha9.dibujar();
  Ficha10.dibujar();
}

}
