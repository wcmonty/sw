public class Wall extends Space {

  public Wall(Coordinate position) {
    this.position = position;
    int imgNumber = int(random(1) * 10) % 4;
    switch(imgNumber) {
    case 0: 
      this.image = WALL0;
      break;
    case 1: 
      this.image = WALL1;
      break;
    case 2: 
      this.image = WALL2;
      break;
    case 3: 
      this.image = WALL3;
      break;
    default:
      this.image = WALL0;
      break;
    }
  }

  @Override
    public Boolean isWall() {
    return true;
  }
}

