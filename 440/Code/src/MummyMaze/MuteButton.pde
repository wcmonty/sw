public class MuteButton extends Button {
  public MuteButton(int startX, int startY, PImage bgImage, int current, int next) {
    super(startX, startY, bgImage, current, next);
  }
  
  @Override
  void mousePressed() {
    if (rectOver) {
      game.toggleMute();
    }
  }
  
  public void draw() {
    update(mouseX, mouseY);
    if (bgImage != null){
      image(bgImage, rectX, rectY, 25, 25); 
    }
    else {
      if (rectOver) {
        fill(rectHighlight);
      } 
      else {
        fill(rectColor);
      }
      stroke(255);
      rect(rectX, rectY, buttonWidth, buttonLength);
      textBox();
    }
    if (mousePressed && rectOver) {
      game.toggleMute();
    }
  }
}
