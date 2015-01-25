/*
 *
 * Currently this just does what splash class does... this will need to be changed...
 * however, we are we are going to need to make some sort of game-over splash screen which
 * reloads the game and gives the option for the user to restart the game or quit...
 *
 */

public class GameOverSplash extends Screen {
  private float startTime = millis();
  private float endTime = millis() + PROGRESSDELAY;
  
  public GameOverSplash () {
  } 

  public void draw() {
    // Reset the start time if too old
    if (startTime < millis() - PROGRESSDELAY){
      startTime = millis();
      endTime = startTime + PROGRESSDELAY;
    }
    background(MUMMYMENU);
    textAlign(CENTER);
    textSize(80);
    fill(#ff0000);
    text("GAME OVER", width /2, height/2); 
  }

  public int getAction() {
    if (endTime < millis()){
      return MENU; 
    }
    else {
     return GAMEOVERSPLASH; 
    }
  }
}

