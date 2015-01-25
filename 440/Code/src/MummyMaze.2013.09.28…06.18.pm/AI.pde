public class AI extends Actor {
  
  public void move() {
    Coordinate toMoveTowards = game.getMainPlayer().position;
    
    int toMoveX = toMoveTowards.x;
    int toMoveY = toMoveTowards.y;
    
    if (toMoveY > this.position.y) {
      attemptMove(MOVEDOWN);
    }
    
    if (toMoveY < this.position.y) {
      attemptMove(MOVEUP);
    }
    
    if (toMoveX < this.position.x) {
      attemptMove(MOVELEFT);
    }
    
    if (toMoveX > this.position.x) {
      attemptMove(MOVERIGHT);
    }
  }
  
  public void draw() {
    
  } 
}
