public class Splash extends Screen {
  private Button startButton;
  private ProgressBar progressBar;
  private boolean finishedLoading = false;
  private PImage bg_image;

  public Splash () {
    startButton = new Button((width - 150)/2, height - 200, 150, 75, "Start", SPLASH, MENU);
    progressBar = new ProgressBar((width - 400)/2, height - 100, 400, 50);
    bg_image = loadImage("mummy_splash2.png");
  } 

  public void draw() {
    background(GAMEBG);
    imageMode(CENTER);
    image(bg_image, width / 2,  height / 2 - 100);
    imageMode(CORNER);
    image(LOGO, 0, 0);
    image(COMNAME, 0, 380);
    image(LEFTNAME, 0, 420);
    image(RIGHTNAME, 0, 420);
    
    String[] lines = loadStrings("VERSION");
    
    textSize(12);
    fill(#E5FF00);
    text("Version " + lines[0], width - 40, height - 10); 
    progressBar.draw();

    if (progressBar.isComplete()) {
      startButton.draw();
    }
  }

  public int getAction() {
    return startButton.getAction();
  }
}

