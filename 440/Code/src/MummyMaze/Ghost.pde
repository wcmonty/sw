public class Ghost extends AI {

  public Ghost(Coordinate position) {
    super(position, GHOST);
  }
  
  @Override
  public Boolean canWalkOnWater() {
    return true;
  }
  
  @Override
  public Boolean canWalkThroughWalls() {
    return true;
  }
  
  public void draw() {
    animation.draw();
  } 
}
