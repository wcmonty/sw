public class Mummy extends AI {

  public Mummy(Coordinate position) {
    this.position = position;
    this.image = loadImage(PATH + "mummy.png");
    this.image.resize(30, 30);
  }
  
  public void draw() {
    Coordinate screenPosition = getScreenCoordinates(position);
    image(this.image, screenPosition.x, screenPosition.y);
  } 
}
