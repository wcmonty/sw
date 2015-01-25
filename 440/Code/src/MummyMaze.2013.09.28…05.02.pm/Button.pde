
public class Button {
  private int buttonWidth;
  private int buttonLength;
  int rectX, rectY;      // Position of square button
  color rectColor, circleColor, baseColor;
  color rectHighlight, circleHighlight;
  color currentColor;
  boolean rectOver = false;

  public Button(int startWidth, int startLength, int startX, int startY) {
    buttonWidth = startWidth;
    buttonLength = startLength;
    rectX = startX;
    rectY = startY;
    rectColor = color(0);
    rectHighlight = color(51);
    baseColor = color(102);
    currentColor = baseColor;
  }

  void draw() {
    update(mouseX, mouseY);
    background(currentColor);

    if (rectOver) {
      fill(rectHighlight);
    } 
    else {
      fill(rectColor);
    }
    stroke(255);
    rect(rectX, rectY, buttonWidth, buttonLength);
  }

  void update(int x, int y) {
    if ( overRect(rectX, rectY, buttonWidth, buttonLength) ) {
      rectOver = true;
    } 
    else {
      rectOver = false;
    }
  }

  void mousePressed() {
    if (rectOver) {
      currentColor = rectColor;
    }
  }

  boolean overRect(int x, int y, int width, int height) {
    if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
      return true;
    } 
    else {
      return false;
    }
  }
}
