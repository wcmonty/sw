public class Game extends Screen {
  // GAME CONSTANTS...
  public Integer NumberOfLevels() {
    return numberOfStages.size();
  }

  // holds number of stages for index levels 
  // (i.e. index = level # and value = # stages for that level)...
  public ArrayList<Integer> numberOfStages;

  public ArrayList<Level> levels;

  public Integer currentLevelID;


  public Game() {
    currentLevelID = 0;
    initializeGame();
  }

  public void newGame() {
    //CurrentView = SPLASH;
    currentLevelID = 0;
    initializeGame();
  }

  public void initializeGame()
  {
    this.numberOfStages = new ArrayList<Integer>();
    this.levels = new ArrayList<Level>();

    // initialize game level's # of stages...
    this.numberOfStages.add(2);
    this.numberOfStages.add(2);
    this.numberOfStages.add(1);
    this.numberOfStages.add(2);

    // use NUMBEROFLEVELS?
    for (int i = 0; i < numberOfStages.size(); i++) {
      this.levels.add(new Level(i, numberOfStages.get(i)));
    }
  }

  public void nextLevel() {
    // 1 to compensate for 0-indexing and another to check to see
    // if next level is valid...
    if (this.currentLevelID + 2 <= NumberOfLevels()) {
      changeLevel(this.currentLevelID + 1);
    }
    else {
      // player wins! show something here....
    }
  }

  public void changeLevel(int newLevel) {
    this.currentLevelID = newLevel;
  }
  
  public void nextStage() {
    Level currentLevel = this.getLevel();
    // 1 to compensate for 0-indexing and another to check to see
    // if next level is valid...
    if (currentLevel.currentStageID + 2 <= currentLevel.numberOfStages) {
      changeStage(currentLevel.currentStageID + 1);
    }
    else {
      // player wins! show something here....
    }
  }

  public void changeStage(int newStage) {
    Coordinate position = this.getMainPlayer().position;
    
    this.getLevel().changeStage(newStage);
    
    this.getMainPlayer().position = position;
  }

  public Level getLevel() {
    return levels.get(currentLevelID);
  }

  public Stage getStage() {
    return getLevel().getStage();
  }

  public MainPlayer getMainPlayer() {
    return getLevel().getStage().mainPlayer;
  }

  public ArrayList<AI> getAI() {
    return getLevel().getStage().ai;
  }

  public void moveAI() {
    ArrayList<AI> ai = this.getAI();

    for (int i = 0; i < ai.size(); i++) {
      ai.get(i).move();
    }
  }

  public void draw() {
    drawBackground();
    this.getLevel().draw();
  }

  public int getAction() {
    return GAME;
  }
}

