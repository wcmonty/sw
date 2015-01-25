public class BarrierDeactivator extends Item {
  public BarrierDeactivator(Coordinate position) {
    this.position = position;
    this.image = DEACTIVATOR;
  }
  
  @Override
  public Boolean isABarrierDeactivator() {
    return true;
  }
}
