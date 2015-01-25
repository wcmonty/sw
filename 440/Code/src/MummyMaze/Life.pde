public class Life extends Item {
  public Life(Coordinate position) {
    this.position = position;
    this.image = LIFE;
  }
  
  @Override
  public Boolean isALife() {
    return true;
  }
}
