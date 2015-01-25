public class InGameMenu extends Screen {

  private Button quit, start, save1, save2, save3;

  public InGameMenu () {
    quit = new Button(50, 200, 275, 75, "Quit Game", INGAMEMENU, MENU);
    start = new Button(50, 400, 275, 75, "Return to Game", INGAMEMENU, GAME);
    save1 = new Button((width - 350), 200, 275, 75, "Save Game 1", INGAMEMENU, GAME);
    save2 = new Button((width - 350), 300, 275, 75, "Save Game 2", INGAMEMENU, GAME);
    save3 = new Button((width - 350), 400, 275, 75, "Save Game 3", INGAMEMENU, GAME);
  } 

  public void draw() {
    background(GAMEBG);
    quit.draw();
    start.draw();
    save1.draw();
    save2.draw();
    save3.draw();
  }

  public int getAction() {
    if (quit.getAction() != INGAMEMENU) {
      game.unPause();
      quit.reset();
      return MENU;
    }
    if (start.getAction() != INGAMEMENU) {
      game.unPause();
      start.reset();
      return GAME;
    } 
    if (save1.getAction() != INGAMEMENU) {
      saveGame("data/sg0.dat");
      save1.reset();
      return GAMESAVED;
    } 
    if (save2.getAction() != INGAMEMENU) {
      saveGame("data/sg1.dat");
      save2.reset();
      return GAMESAVED;
    } 
    if (save3.getAction() != INGAMEMENU) {
      saveGame("data/sg2.dat");
      save3.reset();
      return GAMESAVED;
    } 
    return INGAMEMENU;
  }

  public void saveGame(String fileName) {
    try {
      String[] lines = new String[3];
      lines[0] = fileName;
      lines[1] = "" + game.currentLevelID;
      lines[2] = "" + game.livesLeft;
      saveStrings(fileName, lines);
    }
    catch (Exception e) {
      println(e);
    }
  }
}


