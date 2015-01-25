public class Menu extends Screen {

  private Button start, scores, load1, load2, load3;

  public Menu () {
    start = new Button(150, 100, 150, 75, "Start", MENU, GAME);
    scores = new Button(150, 300, 150, 75, "Scores", MENU, HIGHSCORES);
    load1 = new Button((width - 300), 100, 150, 75, "1", MENU, GAME);
    load2 = new Button((width - 300), 200, 150, 75, "2", MENU, GAME);
    load3 = new Button((width - 300), 300, 150, 75, "3", MENU, GAME);
  } 

  public void draw() {
    drawBackground();
    start.draw();
    scores.draw();
    load1.draw();
    load2.draw();
    load3.draw();
  }

  public int getAction() {
    if (start.getAction() != MENU) {
      start.reset();
      return GAME;
    } 
    if (scores.getAction() != MENU) {
      scores.reset();
      return HIGHSCORES;
    } 
    if (load1.getAction() != MENU) {
      game.changeLevel(2);
      game.reloadCurrentLevel();
      load1.reset();
      return GAME;
    } 
    if (load2.getAction() != MENU) {
      game.changeLevel(4);
      game.reloadCurrentLevel();
      load2.reset();
      return GAME;
    } 
    if (load3.getAction() != MENU) {
      game.changeLevel(6);
      game.reloadCurrentLevel();
      load3.reset();
      return GAME;
    } 
    return MENU;
  }
}




