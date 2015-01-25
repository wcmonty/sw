public class Animation {

  public Coordinate position;
  PImage image;

  Boolean animationStarted = false;

  float fx = -1;
  float fy = -1;

  float moveTime = 20; // millis...700...
  float moveTimeSoFar = 0;

  Coordinate newPosition = new Coordinate(-1, -1);

  int lastTimeSlice = 0;

  public Animation(Coordinate position, PImage image) {
    this.position = position;
    this.image = image;
  }

  public Animation(Coordinate position, PImage image, float moveTime) {
    this.position = position;
    this.image = image;
    this.moveTime = moveTime;
  }

  public void setPosition(Coordinate newPosition) {
    this.position = newPosition;
    resetAnimation(false);
  }

  public void animateMove(Coordinate newPosition) {
    animationStarted = true;

    Integer timeSlice = millis();
    lastTimeSlice = timeSlice;

    Coordinate screenPosition = getScreenCoordinates(this.position);

    this.newPosition = newPosition;

    fx = (float)screenPosition.x;
    fy = (float)screenPosition.y;
  }

  public void resetAnimation(Boolean start) {
    this.animationStarted = start;
    this.lastTimeSlice = 0;
    this.newPosition = new Coordinate(-1, -1);
    this.moveTimeSoFar = 0;
  }

  public void draw() {
    if (animationStarted) {
      Integer timeSlice = millis();

      if ((lastTimeSlice + moveTimeSoFar) >= timeSlice) {
        lastTimeSlice = timeSlice;
        return;
      }
      else {
        float timeDiff = (SPACESIZE / moveTime);
        Coordinate newScreenCoord = getScreenCoordinates(newPosition);

        if (fx < newScreenCoord.x) {
          fx = fx + timeDiff;
          fy = fy;
        }
        else if (fx > newScreenCoord.x) {
          fx = fx - timeDiff;
          fy = fy;
        }
        else if (fy < newScreenCoord.y) {
          fx = fx;
          fy = fy + timeDiff;
        }
        else if (fy > newScreenCoord.y) {
          fx = fx;
          fy = fy - timeDiff;
        }

        image(this.image, fx, fy, SPACESIZE, SPACESIZE);

        moveTimeSoFar++;

        if (moveTimeSoFar == moveTime) {
          this.position = this.newPosition;
          resetAnimation(false);
        }
      }
    }
    else {
      Coordinate screenPosition = getScreenCoordinates(position);
      image(this.image, screenPosition.x, screenPosition.y, SPACESIZE, SPACESIZE);
    }
  }
}

