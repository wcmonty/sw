public class Actor {
  
  Coordinate position;
  PImage image;
  
  public void moveActor(Coordinate newPosition) {
    this.position = newPosition;
  }
  
  public Boolean isMainPlayer() {
    return false;
  }
  
  public Boolean attemptMove(Integer moveEnum) {
    Stage stage = game.getStage();
    
    int newX = position.x;
    int newY = position.y;
    
    if (moveEnum == MOVERIGHT) {
      newX++;
    }
    else if (moveEnum == MOVELEFT) {
      newX--;
    }
    else if (moveEnum == MOVEUP) {
      newY--;
    }
    else if (moveEnum == MOVEDOWN) {
      newY++;
    }
    
    if (newX >= NUMBEROFSPACES || newY >= NUMBEROFSPACES || newX < 0 || newY < 0)
      return false;
      
    Space newSpace = stage.spaces.get(newY).get(newX);
    
    if (newSpace.isWall() || (newSpace.isWater() && !this.canWalkOnWater()))
      return false;
    
    
    this.position.x = newX;
    this.position.y = newY;
    
    // logic for exit and ladders goes here...
    
    
    
    return checkForNoOpponent(new Coordinate(newX, newY));
  }
  
  public Boolean checkForNoOpponent(Coordinate newPosition) {
    if (isMainPlayer()) {
      ArrayList<AI> ai = game.getAI();
      
      for (int i = 0; i < ai.size(); i++) {
        if (ai.get(i).position.equals(this.position)) {
          game.newGame();
          return false;
        }
      }
      
      return true;
    }
    else {
      MainPlayer mainPlayer = game.getMainPlayer();
      
      if (this.position.equals(mainPlayer.position)) {
        game.newGame();
        return false;
      }
      
      return true;
    }
  }
  
  public Boolean canWalkOnWater() {
    return false;
  }
  
  public void draw() {
    
  } 
}
