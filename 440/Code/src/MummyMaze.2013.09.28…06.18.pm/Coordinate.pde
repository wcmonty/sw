public class Coordinate {
  public int x;
  public int y;
  
  public Coordinate(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public Boolean equals(Coordinate coordinate) {
    return this.x == coordinate.x && this.y == coordinate.y;
  }
}
