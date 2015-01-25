public class Barrier extends Item {
  public Barrier(Coordinate position) {
    this.position = position;
    this.image = ACTIVEBARRIER;
    this.canWalkOver = false;
  }
  
  public Barrier(Coordinate position, Boolean activated) {
    this.position = position;
    this.image = activated ? ACTIVEBARRIER : DEACTIVEBARRIER;
    this.canWalkOver = !activated;
  }
  
  @Override
  public Boolean isABarrier() {
    return true;
  }
  
  @Override
  public Boolean isAnActivatedBarrier() {
    return !canWalkOver;
  }
  
  @Override
  public Boolean isADeactivatedBarrier() {
    return canWalkOver;
  }
}
