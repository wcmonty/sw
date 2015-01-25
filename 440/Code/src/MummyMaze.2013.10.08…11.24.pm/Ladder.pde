public class Ladder extends Space {
  Integer nextStage;

  public Ladder(Coordinate position, int nextStage) {
    this.position = position;
    this.nextStage = nextStage;
    this.image = LADDER;
  }

  @Override
    public Boolean isLadder() {
    return true;
  }
}

