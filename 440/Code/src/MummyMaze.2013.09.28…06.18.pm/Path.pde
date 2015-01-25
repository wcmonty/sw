public class Path extends Space {

  public Path(Coordinate position) {
    this.position = position;
    this.image = loadImage(PATH + "path.png");
  }
  
  @Override
  public Boolean isPath() {
    return true;
  }
  
  
}
