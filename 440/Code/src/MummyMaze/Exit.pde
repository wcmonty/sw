public class Exit extends Space {
  
  public Exit(Coordinate position) {
    this.position = position;
    this.image = EXIT;
  }
  
  @Override
  public Boolean isExit() {
    return true;
  }
}
