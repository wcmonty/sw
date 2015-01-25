/*
 *
 * Currently this just does what splash class does... this will need to be changed...
 * however, we are we are going to need to make some sort of game-over splash screen which
 * reloads the game and gives the option for the user to restart the game or quit...
 *
 */

public class GameOverSplash extends Screen {
  private Button startButton;
  private ProgressBar progressBar;
  private boolean finishedLoading = false;
  private PImage bg_image;

  public GameOverSplash () {
    startButton = new Button((width - 150)/2, height - 200, 150, 75, "Start", SPLASH, GAME);
    progressBar = new ProgressBar((width - 400)/2, height - 100, 400, 50);
    bg_image = loadImage("mummy_splash.png");
  } 

  public void draw() {
    drawBackground();
    imageMode(CENTER);
    image(bg_image, width / 2, height / 2 - 100);
    startButton.draw();
  }

  public int getAction() {
    return startButton.getAction();
  }
}

