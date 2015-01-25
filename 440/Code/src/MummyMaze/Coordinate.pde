public class Coordinate {
  public int x;
  public int y;
  public float fx = -1.0;
  public float fy = -1.0;
  
  public Coordinate(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public Coordinate(float fx, float fy) {
    this.fx = fx;
    this.fy = fy;
  }
  
  public Boolean equals(Coordinate coordinate) {
    return this.x == coordinate.x && this.y == coordinate.y && this.fx == coordinate.fx && this.fy == coordinate.fy;
  }
}
