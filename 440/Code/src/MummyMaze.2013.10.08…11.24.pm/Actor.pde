public class Actor {
  
  Coordinate position;
  PImage image;
  public Boolean needToDraw = true;
  
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
    
    if (newX >= NUMBEROFSPACES || newY >= NUMBEROFSPACES || newX < 0 || newY < 0) {
      return false;
    }
      
    Space newSpace = stage.spaces.get(newY).get(newX);
    
    if (newSpace.isWall() || (newSpace.isWater() && !this.canWalkOnWater())) {
      return false;
    }
    
    if (isMainPlayer()) {
      if (newSpace.isExit()) {
        game.nextLevel();
      }
      else if (newSpace.isLadder()) {
        game.changeStage(((Ladder)newSpace).nextStage);
      }
    }
    
    game.getStage().spaces.get(position.y).get(position.x).needToDraw = true;
    this.needToDraw = true;
    
    // logic for exit and ladders goes here...
    this.position.x = newX;
    this.position.y = newY;
    
    this.draw();
    
    return (checkForNoOpponentOrFriend(new Coordinate(newX, newY)));
  }
  
  public Boolean checkForNoOpponentOrFriend(Coordinate newPosition) {
    if (isMainPlayer()) {
      ArrayList<AI> ai = game.getAI();
      
      for (int i = 0; i < ai.size(); i++) {
        if (ai.get(i).position.equals(this.position)) {
          //game.newGame();
          game.die();
          game.reloadCurrentLevel();
          return false;
        }
      }
      
      return true;
    }
    else {
      MainPlayer mainPlayer = game.getMainPlayer();
      
      if (this.position.equals(mainPlayer.position)) {
        //game.newGame();
        game.die();
        game.reloadCurrentLevel();
        return false;
      }
      
      removeAIActors();
      
      return true;
    }
  }
  
  public void removeAIActors() {
    int thisIndex = -1, otherIndex = -1;
    
    ArrayList<AI> ai = game.getAI();
    
    for (int i = 0; i < ai.size(); i++) {
        if (ai.get(i) != this && ai.get(i).position.equals(this.position)) {
          otherIndex = i;
          break;
        }
    }
    
    if (otherIndex >= 0) {
      ai.remove(otherIndex);
      
      for (int i = 0; i < ai.size(); i++) {
          if (ai.get(i) == this) {
            thisIndex = i;
            break;
          }
      }
      
      game.getStage().spaces.get(position.y).get(position.x).needToDraw = true;
      
      if (thisIndex >= 0)
        ai.remove(thisIndex);
    }
  }
  
  public Boolean canWalkOnWater() {
    return false;
  }
  
  public void draw() { }
  
}
