public class Actor {
  
  Animation animation;
  
  Coordinate position;
  PImage image;
  
  public Actor(Coordinate position, PImage image) {
    this.position = position;
    this.image = image;
    
    animation = new Animation(position, this.image);
  }
  
  public Actor() { }
  
  public void moveActor(Coordinate newPosition) {
    this.position = newPosition;
  }
  
  public Boolean isMainPlayer() {
    return false;
  }
  
  public void setPosition(Coordinate newPosition)
  {
    this.setPosition(newPosition, true);
  }
  
  public void setPosition(Coordinate newPosition, Boolean animate)
  {
    if (animate) {
      animation.animateMove(newPosition);
      this.position = newPosition;
    }
    else {
      this.position = newPosition;
      animation.setPosition(newPosition);
    }
  }
  
  public Boolean attemptMove(Integer moveEnum) {
    if (this.isFrozen() || game.isPaused()) {
      return false;
    }
    
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
    
    if ((newSpace.isWall() && !canWalkThroughWalls()) || (newSpace.isWater() && !this.canWalkOnWater())) {
      return false;
    }
    else if (spaceHasFrozenAI(newSpace)) {
      return false;
    }
    else if (!checkForItems(new Coordinate(newX, newY))) {
      return false;
    }
    
    if (this.isMainPlayer()) {
      if (newSpace.isExit()) {
        game.nextLevel();
      }
      else if (newSpace.isLadder()) {
        setPosition(new Coordinate(newX, newY), false);
        game.changeStage(((Ladder)newSpace).nextStage);
        //this.position = new Coordinate(newX, newY);
        /*ArrayList<AI> ai = game.getAI();
        for (int i = 0; i < ai.size(); i++) {
          ai.get(i).animation.resetAnimation(false);
        }*/
      }
    }
    
    //this.position.x = newX;
    //this.position.y = newY;
    
    this.setPosition(new Coordinate(newX, newY));
    
    this.draw();
    
    return (checkForNoOpponentOrFriend(new Coordinate(newX, newY)));
  }
  
  public Boolean checkForNoOpponentOrFriend(Coordinate newPosition) {
    if (this.isMainPlayer()) {
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
      
      if (thisIndex >= 0)
        ai.remove(thisIndex);
    }
  }
  
  public Boolean spaceHasFrozenAI(Space newSpace) {
    Coordinate newPosition = newSpace.position;
    
    ArrayList<AI> ai = game.getAI();
    
    for (int i = 0; i < ai.size(); i++) {
        if (ai.get(i) != this && ai.get(i).position.equals(newPosition) && ai.get(i).isFrozen()) {
          return true;
        }
    }
    
    return false;
  }
  
  public Boolean canWalkOnWater() {
    return false;
  }
  
  public Boolean canWalkThroughWalls() {
    return false;
  }
  
  public Boolean isFrozen() {
    return false;
  }
  
  public Boolean checkForItems(Coordinate newPosition) {
    ArrayList<Item> items = game.getItems();
    
    if (this.isMainPlayer()) {
      for (int i = 0; i < items.size(); i++) {
        if (items.get(i).position.equals(newPosition)) {
          if (items.get(i).isALife()) {
            game.addALife();
            items.remove(i);
          }
          else if (items.get(i).isABoobyTrap()) {
            ArrayList<AI> ai = game.getAI();
    
            for (int j = 0; j < ai.size(); j++) {
                ai.get(j).frozen = false;
            }
          }
          else if (items.get(i).isABarrier()) {
            if (items.get(i).isAnActivatedBarrier()) {
              return false;
            }
          }
          else if (items.get(i).isABarrierActivator()) {
            ArrayList<AI> ai = game.getAI();
            
            for (int j = 0; j < items.size(); j++) {
              if (items.get(j).isABarrier()) {
                items.get(j).setCanWalkOver(false);
                
                for (int k = 0; k < ai.size(); k++) {
                    if (!ai.get(k).canWalkThroughWalls() && ai.get(k).position.equals(items.get(j).position)) {
                      ai.remove(k);
                      k--;
                    }
                }
              }
            }
          }
          else if (items.get(i).isABarrierDeactivator()) {
            for (int j = 0; j < items.size(); j++) {
              if (items.get(j).isABarrier()) {
                items.get(j).setCanWalkOver(true);
              }
            }
          }
          else if (items.get(i).isABarrierSwitch()) {
            ArrayList<AI> ai = game.getAI();
            
            for (int j = 0; j < items.size(); j++) {
              if (items.get(j).isABarrier()) {
                if (items.get(j).getCanWalkOver()) {
                  items.get(j).setCanWalkOver(false);
                  
                  for (int k = 0; k < ai.size(); k++) {
                      if (!ai.get(k).canWalkThroughWalls() && ai.get(k).position.equals(items.get(j).position)) {
                        ai.remove(k);
                        k--;
                      }
                  }
                }
                else {
                  items.get(j).setCanWalkOver(true);
                }
              }
            }
          }
          
          break;
        }
      }
    }
    else {
      for (int i = 0; i < items.size(); i++) {
        if (items.get(i).position.equals(newPosition)) {
          if (items.get(i).isABarrier()) {
              if (items.get(i).isAnActivatedBarrier() && !this.canWalkThroughWalls()) {
                return false;
              }
          }
          
          break;
        }
      }
    }
    
    return true;
  }
  
  public void draw() {
    animation.draw();
  }
  
}
