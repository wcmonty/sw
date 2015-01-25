public class Game {
  // GAME CONSTANTS...
  public final Integer NUMBEROFLEVELS = 1;
  
  // holds number of stages for index levels 
  // (i.e. index = level # and value = # stages for that level)...
  public ArrayList<Integer> numberOfStages;
  
  public ArrayList<Level> levels;
  
  public Integer currentLevelID;
  
  
  public Game() {
    currentLevelID = 0;
    initializeGame();
  }
  
  public void initializeGame()
  {
    this.numberOfStages = new ArrayList<Integer>();
    this.levels = new ArrayList<Level>();
    
    // initialize game level's # of stages...
    this.numberOfStages.add(1);
    
    // use NUMBEROFLEVELS?
    for (int i = 0; i < numberOfStages.size(); i++) {
      this.levels.add(new Level(i, numberOfStages.get(i)));
    }
    
    
  }
  
  
  
  public void changeLevel(int newLevel) {
    this.currentLevelID = newLevel;
  }
  
  public void changeStage(int newStage) {
    this.getLevel().changeStage(newStage);
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
  
  public void draw() {
    this.getLevel().draw();
  }
}
