public class MainPlayer extends Actor {
  
  public MainPlayer(Coordinate position) {
    this.position = position;
    this.image = loadImage(PATH + "player.png");
    this.image.resize(30, 30);
  }
  
  
  
  public void draw() {
    Coordinate screenPosition = getScreenCoordinates(position);
    image(this.image, screenPosition.x, screenPosition.y);
  } 
}
