public class MainPlayer extends Actor {
  
  public MainPlayer(Coordinate position) {
    super(position, MAINPLAYER);
    
    animation = new Animation(position, this.image, 3);
  }
  
  @Override
  public Boolean isMainPlayer() {
    return true;
  }
  
  public void draw() {
    animation.draw();
  }
}
