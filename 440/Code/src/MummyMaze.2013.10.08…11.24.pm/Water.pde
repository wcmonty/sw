public class Water extends Space {

  public Water(Coordinate position) {
    this.position = position;
    int imgNumber = int(random(1) * 10) % 4;
    switch(imgNumber) {
    case 0: 
      this.image = WATER0;
      break;
    case 1: 
      this.image = WATER1;
      break;
    case 2: 
      this.image = WATER2;
      break;
    case 3: 
      this.image = WATER3;
      break;
    default:
      this.image = WATER0;
      break;
    }
 }

  @Override
    public Boolean isWater() {
    return true;
  }
}

