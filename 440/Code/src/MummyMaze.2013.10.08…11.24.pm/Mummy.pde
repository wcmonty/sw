public class Mummy extends AI {

  public Mummy(Coordinate position) {
    this.position = position;
    this.image = MUMMY;
  }
  
  public void draw() {
    if (this.needToDraw) {
      Coordinate screenPosition = getScreenCoordinates(position);
      image(this.image, screenPosition.x, screenPosition.y, 30, 30);
      this.needToDraw = false;
    }
  } 
}
