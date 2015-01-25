public class Splash extends Screen {
  Button startButton;
  ProgressBar progressBar;
  private boolean finishedLoading = false;

  public Splash () {
    startButton = new Button((width - 150)/2, height - 200, 150, 75, "Start");
    progressBar = new ProgressBar((width - 400)/2, height - 100, 400, 50);
  } 

  public void draw() {
    drawBackground();
    progressBar.draw();

    if (progressBar.isComplete()) {
      startButton.draw();
    }
  }
}

