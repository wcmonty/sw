public class Actor {
  
  Coordinate position;
  PImage image;
  
  public void moveActor(Coordinate newPosition) {
    this.position = newPosition;
  }
  
  public Boolean attemptMove(Coordinate newPosition) {
    Stage stage = Game.getStage();
    
    
    
    return true;
  }
  
  public Boolean canWalkOnWater() {
    return false;
  }
  
  public void draw() {
    
  } 
}
