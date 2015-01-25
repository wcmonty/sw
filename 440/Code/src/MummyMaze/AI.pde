public class AI extends Actor {
  
  public final Integer MILLISBETWEENTURNS = 700;
  public Integer lastTimeSlice = 0;
  
  public AI() { }
  
  public AI(Coordinate position, PImage image) {
    super(position, image);
  }
  
  Boolean frozen = false;
  
  public void move() {
    Integer timeSlice = millis();
    
    if (timeSlice - lastTimeSlice < MILLISBETWEENTURNS) {
      return;
    }
    else {
      lastTimeSlice = timeSlice;
    }
    
    Coordinate toMoveTowards = game.getMainPlayer().position;
    
    int toMoveX = toMoveTowards.x;
    int toMoveY = toMoveTowards.y;
    
    if (toMoveY > this.position.y) {
      if (attemptMove(MOVEDOWN)) {
        return;
      }
    }
    
    if (toMoveY < this.position.y) {
      if (attemptMove(MOVEUP)) {
        return;
      }
    }
    
    if (toMoveX < this.position.x) {
      if (attemptMove(MOVELEFT)) {
        return;
      }
    }
    
    if (toMoveX > this.position.x) {
      if (attemptMove(MOVERIGHT)) {
        return;
      }
    }
  }
  
  public void draw() {
    animation.draw();
  } 
}
