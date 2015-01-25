public class Bat extends AI {
  
  public Bat(Coordinate position) {
    this.position = position;
  }
  
  
  @Override
  public Boolean canWalkOnWater() {
    return true;
  }
  
  public void draw() {
    
  } 
}
