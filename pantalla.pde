class Pantalla {
  String estado="inicio";
  PImage intr, inic, gan, per, cred; 
  ju jue; 
  //-----------------------------------------------------------//   
  Pantalla() {
    jue = new ju();

    inic = loadImage ("Inicio.png");
    intr = loadImage ("Intruciones.png");
    gan = loadImage ("Ganaste.png");
    per = loadImage ("Perdiste.png");
    cred = loadImage ("Creditos.png");
  }
  //-----------------------------------------------------------//   
  void dibujar() {
    if (estado == "inicio") {
      image(inic, 0, 0, width, height);
    } else if (estado == "intrucciones") {
      image(intr, 0, 0, width, height);
      pev.play();
    } else if (estado == "juego") {
      jue.juego();
    }

    if (estado == "creditos") {
      image(cred, 0, 0, width, height);
      pev.play();
    }
  }
  //-----------------------------------------------------------//  
  void keyPressed() {
    jue.keyPressed();
    if (estado == "inicio" && key == 'p') {
      estado="intrucciones";
    } else if (estado == "intrucciones" && key == 'j') {
      estado="juego";
    }
    if (estado == "juego" && key == 'c') {
      estado="creditos";
      pev.rewind();
    }
    if (estado == "creditos" && key == 'r') {
      estado = "juego";
    }
  }
}
