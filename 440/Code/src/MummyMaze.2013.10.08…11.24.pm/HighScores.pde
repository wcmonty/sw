public class HighScores extends Screen {

  Button menuButton;

  public HighScores() {
    menuButton = new Button((width - 150)/2, height - 200, 150, 75, "MENU", HIGHSCORES, MENU);
  }

  public void draw() {
    drawBackground();
    textSize(34);
    fill(204);
    textAlign(CENTER);
    text("High Scores", 0, 50, SCREENWIDTH, 50);
    textSize(28);
    textAlign(LEFT);
    text("First score", 20, 85, SCREENWIDTH, 50);
    text("Level 6", 350, 85, SCREENWIDTH, 50);
    
    text("Second score", 20, 85 + 28, SCREENWIDTH, 50);
    text("Level 6", 350, 85 + 28, SCREENWIDTH, 50);
    
    text("Third score", 20, 85 + 56, SCREENWIDTH, 50);
    text("Level 5", 350, 85 + 56, SCREENWIDTH, 50);

    menuButton.draw();
  }

  public int getAction() {
    if (menuButton.getAction() != HIGHSCORES) {
      menuButton.reset();
      return MENU;
    }
    return HIGHSCORES;
  }
}

