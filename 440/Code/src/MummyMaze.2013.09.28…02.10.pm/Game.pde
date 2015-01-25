public class Game {
  // GAME CONSTANTS...
  public final Integer NUMBEROFLEVELS = 1;
  
  // holds number of stages for index levels 
  // (i.e. index = level # and value = # stages for that level)...
  public ArrayList<Integer> numberOfStages;
  
  public ArrayList<Level> levels;
  
  public Integer currentLevelID;
  
  
  public Game() {
    
  }
  
  public void initializeGame()
  {
    // initialize game level's # of stages...
    numberOfStages.add(1);
    
    for (int i = 0; i < NUMBEROFLEVELS; i++) {
      levels.add(new Level(i, numberOfStages.get(i)));
    }
    
    
  }
  
  
  
  public void changeLevel(int newLevel) {
    currentLevelID = newLevel;
  }
  
  public void changeStage(int newStage) {
    this.getLevel().changeStage(newStage);
  }
  
  public Level getLevel() {
    return levels.get(currentLevelID);
  }
  
  public void draw() {
    
  }
}
