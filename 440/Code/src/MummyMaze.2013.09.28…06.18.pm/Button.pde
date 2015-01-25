/*!
 *  Based on code from: http://processing.org/examples/button.html
 */
public class Button {
  private int buttonWidth;
  private int buttonLength;
  int rectX, rectY;      // Position of square button
  String word;
  color rectColor, circleColor, baseColor;
  color rectHighlight, circleHighlight;
  color currentColor;
  boolean rectOver = false;

  public Button(int startX, int startY, int startWidth, int startLength, String startWord) {
    buttonWidth = startWidth;
    buttonLength = startLength;
    rectX = startX;
    rectY = startY;
    word = startWord;
    rectColor = color(0);
    rectHighlight = color(51);
    baseColor = color(102);
    currentColor = baseColor;
  }

  void draw() {
    update(mouseX, mouseY);
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

  public void textBox () {
    textSize(32);
    fill(255);
    text(word, rectX + 10, rectY + 10, buttonWidth - 20, buttonLength - 20); 
  }
}

