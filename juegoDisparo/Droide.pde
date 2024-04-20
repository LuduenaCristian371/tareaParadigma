class Droide{
  private PVector posicion,velocidad;
  private PImage imagen;
  
  public Droide(){
    imagen=loadImage("droideSonda.png");
  }
  
  public Droide(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen = loadImage("droideSonda.png");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen,posicion.x,posicion.y,200,200);
  }
  public void mover(){
    if(this.posicion.y<=height){
      this.posicion.y+=this.velocidad.y;
    }else{
      this.posicion.y=0;
}
