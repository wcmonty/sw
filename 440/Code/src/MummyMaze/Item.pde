public class Item {
  Coordinate position;
  PImage image;
  
  Boolean canWalkOver = true;
  
  public Boolean isALife() {
    return false;
  }
  
  public Boolean isABoobyTrap() {
    return false;
  }
  
  public Boolean isABarrier() {
    return false;
  }
  
  public Boolean isAnActivatedBarrier() {
    return false;
  }
  
  public Boolean isADeactivatedBarrier() {
    return false;
  }
  
  public Boolean isABarrierActivator() {
    return false;
  }
  
  public Boolean isABarrierDeactivator() {
    return false;
  }
  
  public Boolean isABarrierSwitch() {
    return false;
  }
  
  public void setCanWalkOver(Boolean canWalkOver) {
    this.canWalkOver = canWalkOver;
    
    if (this.canWalkOver) {
      if (this.isABarrier()) {
        this.image = DEACTIVEBARRIER;
      }
    }
    else {
      if (this.isABarrier()) {
        this.image = ACTIVEBARRIER;
      }
    }
  }
  
  public Boolean getCanWalkOver() {
    return canWalkOver;
  }
  
  public void draw() {
    Coordinate screenPosition = getScreenCoordinates(position);
    image(this.image, screenPosition.x, screenPosition.y);
  }
}
