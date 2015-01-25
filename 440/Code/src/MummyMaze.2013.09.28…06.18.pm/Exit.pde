public class Exit extends Space {
  
  public Exit(Coordinate position) {
    this.position = position;
    this.image = loadImage(PATH + "exit.png");
  }
  
  @Override
  public Boolean isExit() {
    return true;
  }
}
