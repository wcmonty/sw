public class BarrierActivator extends Item {
  public BarrierActivator(Coordinate position) {
    this.position = position;
    this.image = ACTIVATOR;
  }
  
  @Override
  public Boolean isABarrierActivator() {
    return true;
  }
}
