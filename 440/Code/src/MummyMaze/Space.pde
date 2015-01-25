public class Space {
  
  public Coordinate position;
  PImage image;
  
  public Boolean isWall() {
    return false;
  }
  
  public Boolean isPath() {
    return false;
  }
  
  public Boolean isExit() {
    return false;
  }
  
  public Boolean isLadder() {
    return false;
  }
  
  public Boolean isWater() {
    return false;
  }
  
  public void draw() {
    Coordinate screenPosition = getScreenCoordinates(position);
    image(this.image, screenPosition.x, screenPosition.y);
  }
}
