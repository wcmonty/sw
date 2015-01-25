public class Level {
  public Integer id;
  public ArrayList<Stage> stages;
  public Integer currentStageID;
  public Integer numberOfStages;
  
  public Level(int id, int numberOfStages) {
    this.id = id;
    this.numberOfStages = numberOfStages;
    this.currentStageID = 0;
    
    for (int i = 0; i < this.numberOfStages; i++) {
      // initialize each stage to this level, stage id (which is i);
      stages.add(new Stage(id, i));
    }
  }
  
  public void changeStage(int newStage) {
    currentStageID = newStage;
  }
  
  public void draw() {
    
  }
}
