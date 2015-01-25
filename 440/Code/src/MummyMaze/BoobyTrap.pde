public class BoobyTrap extends Item {
  public BoobyTrap(Coordinate position) {
    this.position = position;
    this.image = BOOBYTRAP;
  }
  
  @Override
  public Boolean isABoobyTrap() {
    return true;
  }
}
