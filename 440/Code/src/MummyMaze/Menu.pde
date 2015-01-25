public class Menu extends Screen {

  private Button start, load1, load2, load3;

  public Menu () {
    start = new Button(50, 400, 275, 75, "New Game", MENU, GAME);
    load1 = new Button((width - 350), 200, 275, 75, "Saved Game 1", MENU, GAME);
    load2 = new Button((width - 350), 300, 275, 75, "Saved Game 2", MENU, GAME);
    load3 = new Button((width - 350), 400, 275, 75, "Saved Game 3", MENU, GAME);
  } 

  public void draw() {
    background(MUMMYMENU);
    start.draw();
    load1.draw();
    load2.draw();
    load3.draw();
  }

  public int getAction() {
    if (start.getAction() != MENU) {
      game.newGame();
      start.reset();
      return GAME;
    } 
    if (load1.getAction() != MENU) {
      loadSavedGame("sg0.dat");
      load1.reset();
      return GAME;
    } 
    if (load2.getAction() != MENU) {
      loadSavedGame("sg1.dat");
      load2.reset();
      return GAME;
    } 
    if (load3.getAction() != MENU) {
      loadSavedGame("sg2.dat");
      load3.reset();
      return GAME;
    } 
    return MENU;
  }

  public void loadSavedGame(String fileName) {
    try {
      String[] lines = loadStrings(fileName);
      game.changeLevel(Integer.parseInt(lines[1]));
      game.changeLivesLeft(Integer.parseInt(lines[2]));
      game.reloadCurrentLevel();
    }
    catch (Exception e) {
      println(e);
    }
  }
}



