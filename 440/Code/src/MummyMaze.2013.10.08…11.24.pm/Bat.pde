public class Bat extends AI {
  
  public Bat(Coordinate position) {
    this.position = position;
    this.image = BAT;
  }
  
  @Override
  public Boolean canWalkOnWater() {
    return true;
  }
  
  public void draw() {
    if (this.needToDraw) {
      Coordinate screenPosition = getScreenCoordinates(position);
      image(this.image, screenPosition.x, screenPosition.y);
      this.needToDraw = false;
    }
  } 
}
