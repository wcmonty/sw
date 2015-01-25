public class ProgressBar {
  private float lineFill = 0;
  private int xpos, ypos, xwidth, yheight;
  private float startTime = millis();
  private float endTime = startTime + 4000;
  private boolean complete = false;
  private float percent = 0;

  public ProgressBar(int startX, int startY, int startWidth, int startHeight) {
    xpos = startX;
    ypos = startY;
    xwidth = startWidth;
    yheight = startHeight;
  }

  public void draw() {
    noFill();
    stroke(255);
    rect(xpos, ypos, xwidth, yheight);

    if (!complete) {
      percent = (millis() - startTime) / (endTime - startTime);
      if (percent > 1) {
        percent = 1;
        complete = true;
      }
    }
    for (float i = 0; i < xwidth; i++) {
      fill(lineFill + percent * 255);
      rect(xpos + 2, ypos + 2, percent * (xwidth - 4), yheight - 4);
    }
    if (complete) {
      writeComplete("100% Loaded");
    }
    else {
      Integer done = int(percent * 100);
      writeComplete(done.toString() + "% Loaded"); 
    }
  }

  private void writeComplete(String txt) {
    textAlign(CENTER, CENTER);
    textSize(32);
    fill(128);
    text(txt, xpos + xwidth / 2, ypos + yheight / 2);
  }

  public boolean isComplete() {
    return complete;
  }
}

