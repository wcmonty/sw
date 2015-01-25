public class Water extends Space {
  
  public Water(Coordinate position) {
    this.position = position;
    this.image = loadImage(PATH + "water.png");
  }
  
  @Override
  public Boolean isWater() {
    return true;
  }
}
