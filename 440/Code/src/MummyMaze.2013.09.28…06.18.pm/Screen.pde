abstract class Screen {
  color bgcolor = BACKGROUND;
 
  abstract void draw();
  
  public void drawBackground() {
      background(BACKGROUND);
  }
  
}
