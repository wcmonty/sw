/*!
 *  Based on code from: http://processing.org/examples/button.html
 */
public class Button {
  private int buttonWidth;
  private int buttonLength;
  private int rectX, rectY;      // Position of square button
  private String word;
  private color rectColor, circleColor, baseColor;
  private color rectHighlight, circleHighlight;
  private color currentColor;
  private boolean rectOver = false;
  private int action; 
  private int nextAction; 

  public Button(int startX, int startY, int startWidth, int startLength, String startWord, int current, int next) {
    buttonWidth = startWidth;
    buttonLength = startLength;
    rectX = startX;
    rectY = startY;
    word = startWord;
    rectColor = color(0);
    rectHighlight = color(51);
    baseColor = color(102);
    currentColor = baseColor;
    action = current;
    nextAction = next;
    
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
    if (mousePressed && rectOver) {
      action = nextAction;
      //println("here");
    }
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
      action = nextAction;
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
  
  public int getAction () {
    return action;
  }
}

