public class GameSaved extends Screen {
  private Button okButton;
  private final int BUTTONWIDTH = 275;
  private final int BUTTONHEIGHT = 75;

  public GameSaved() {
    okButton = new Button(width /2  - BUTTONWIDTH /2, height /2 + BUTTONHEIGHT /2, BUTTONWIDTH, BUTTONHEIGHT, "Continue", GAMESAVED, INGAMEMENU);
  }

  public void draw() {
    background(GAMEBG);
    okButton.draw();
    tint(random(255));
    image(GAMESAVE, width/2 - 200, height/2 - 40);
  }

  public int getAction() {
    if (okButton.getAction() == INGAMEMENU) {
      tint(255);
      okButton.reset();
      return INGAMEMENU;
    }
    else 
      return GAMESAVED;
  };
}

