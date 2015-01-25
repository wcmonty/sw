abstract class Screen {
  color bgcolor = BACKGROUND;

  abstract void draw();
  abstract int getAction();
  public void drawBackground() {
    background(BACKGROUND);
  }
}

