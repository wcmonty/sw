public class BarrierSwitch extends Item {
  public BarrierSwitch(Coordinate position) {
    this.position = position;
    this.image = BARRIERSWITCH;
  }
  
  @Override
  public Boolean isABarrierSwitch() {
    return true;
  }
}
