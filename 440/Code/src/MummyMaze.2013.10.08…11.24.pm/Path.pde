public class Path extends Space {

  public Path(Coordinate position) {
    this.position = position;
    int imgNumber = int(random(1) * 10) % 4;
    switch(imgNumber) {
    case 0: 
      this.image = PATH0;
      break;
    case 1: 
      this.image = PATH1;
      break;
    case 2: 
      this.image = PATH2;
      break;
    case 3: 
      this.image = PATH3;
      break;
    default:
      this.image = PATH0;
      break;
    }
  }

  @Override
    public Boolean isPath() {
    return true;
  }
}

