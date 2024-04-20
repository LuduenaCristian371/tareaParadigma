private Shooter arma;
private Droide blanco;

public void setup(){
  size(600,600);
  arma=new Shooter();
  arma.posicion=new PVector(width/2,600);
  arma.velocidad=new PVector(10,10);
  arma.setPosicion(new PVector(width/2,600));
  arma.setVelocidad(new PVector(10,10));
  
  blanco=new Droide();
}

public void draw(){
  background(loadImage("geonosisFondo.png"));
  arma.dibujar();
  actualizarVelocidadArma();
  blanco.dibujar();
  blanco.mover();
}

  public void keyPressed(){
  if(key=='d'){
    arma.mover(1);
  }
  if(key=='a'){
    arma.mover(0);
  }
}

public void actualizarVelocidadArma(){
  if(arma.getPosicion().x>(width/2)){
    arma.getVelocidad().x=30;
  }else{
    arma.getVelocidad().x=10;
  }
}  
