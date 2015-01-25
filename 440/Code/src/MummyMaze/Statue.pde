public class Statue extends AI {
  
  
  public Statue(Coordinate position) {
    super(position, STATUE);
    this.frozen = true;
  }
  
  @Override
  public Boolean isFrozen() {
    return frozen;
  }
  
  /*public void draw() {
    //Coordinate screenPosition = getScreenCoordinates(position);
    //image(this.image, screenPosition.x, screenPosition.y, 30, 30);
    animation.draw();
  }*/
}
