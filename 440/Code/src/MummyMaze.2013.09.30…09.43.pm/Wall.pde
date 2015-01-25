public class Wall extends Space {
  
  public Wall(Coordinate position) {
    this.position = position;
    this.image = loadImage(PATH + "wall.png");
  }
  
  @Override
  public Boolean isWall() {
    return true;
  }
}
