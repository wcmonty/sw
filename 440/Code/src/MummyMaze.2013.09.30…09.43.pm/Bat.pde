public class Bat extends AI {
  
  public Bat(Coordinate position) {
    this.position = position;
    this.image = loadImage(PATH + "bat.png");
    this.image.resize(30, 30);
  }
  
  @Override
  public Boolean canWalkOnWater() {
    return true;
  }
  
  public void draw() {
    Coordinate screenPosition = getScreenCoordinates(position);
    image(this.image, screenPosition.x, screenPosition.y);
  } 
}
