public class Bat extends AI {
  
  public Bat(Coordinate position) {
    super(position, BAT);
  }
  
  @Override
  public Boolean canWalkOnWater() {
    return true;
  }
  
  public void draw() {
    animation.draw();
  } 
}
