/*!
 *  Based on code from: http://processing.org/examples/button.html
 */
public class Button {
  protected int buttonWidth;
  protected int buttonLength;
  protected int rectX, rectY;      // Position of square button
  protected String word;
  protected color rectColor, circleColor, baseColor;
  protected color rectHighlight, circleHighlight;
  protected color currentColor;
  protected boolean rectOver = false;
  protected int currentAction;
  protected int action; 
  protected int nextAction;
  protected PImage bgImage; 

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
    currentAction = current;
    action = current;
    nextAction = next;
    bgImage = null;
  }

  public Button(int startX, int startY, PImage bgImage, int current, int next) {
    buttonWidth = bgImage.width;
    buttonLength = bgImage.height;
    rectX = startX;
    rectY = startY;
    word = "";
    rectColor = color(0);
    rectHighlight = color(51);
    baseColor = color(102);
    currentColor = baseColor;
    currentAction = current;
    action = current;
    nextAction = next;
    this.bgImage = bgImage;
  }

  public void draw() {
    update(mouseX, mouseY);
    if (bgImage != null){
      image(bgImage, rectX, rectY); 
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
      action = nextAction;
    }
  }
  
  public void reset(){
    action = currentAction;
  }

  public void update(int x, int y) {
    if ( overRect(rectX, rectY, buttonWidth, buttonLength) ) {
      rectOver = true; 
    } 
    else {
      rectOver = false;
    }
  }

  public void mousePressed() {
    if (rectOver) {
      currentColor = rectColor;
      action = nextAction;
    }
  }

  public boolean overRect(int x, int y, int width, int height) {
    if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
      return true;
    } 
    else {
      return false;
    }
  }

  public void textBox () {
    textAlign(CENTER);
    textSize(32);
    fill(255);
    text(word, rectX + 10, rectY + 10, buttonWidth - 20, buttonLength - 20); 
  }
  
  public int getAction () {
    return action;
  }
}

