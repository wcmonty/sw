public class Ladder extends Space {
  Integer nextStage;
  
  public Ladder(Coordinate position, int nextStage) {
    this.position = position;
    this.nextStage = nextStage;
    this.image = loadImage(PATH + "ladder.png");
  }
  
  @Override
  public Boolean isLadder() {
    return true;
  }
}
