import java.io.FileInputStream;
import java.util.Scanner;

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

  public Integer livesLeft = GAMELIVES;
  
  public Boolean paused = false;
  
  public MuteButton muteButton;
  
  ArrayList<PImage> lifeImages;

  public Game() {
    currentLevelID = 0;
    initializeGame();
    
    lifeImages = new ArrayList<PImage>();
    
    livesLeft = GAMELIVES;
    
    updateLivesLeftImages();
    
    muteButton = new MuteButton(XOFFSET + (NUMBEROFSPACES * (SPACESIZE-1)), YOFFSET - SPACESIZE, MUTE,0, 0);
    //int startX, int startY, PImage bgImage, int current, int next)
  }

  public void newGame() {
    //CurrentView = SPLASH;
    //CurrentView = GAMEOVERSPLASH;
    livesLeft = GAMELIVES;
    initializeGame();
    currentLevelID = 0;
    
    updateLivesLeftImages();
  }

  public Boolean mute = false;
  
  public void toggleMute() {
    if (!mute) {
      mute = true;
      soundPlayer.pause();
    }
    else {
      mute = false;
      soundPlayer.play();
    }
  }

  public void reloadCurrentLevel() {
    this.getLevel().reloadLevel();
  }
  
  public void changeLivesLeft(int nLives) {
    this.livesLeft = nLives;
    updateLivesLeftImages();
  }
  
  public void updateLivesLeftImages() {
    lifeImages.clear();
    
    for (int i = 0; i < livesLeft; i++) {
      lifeImages.add(LIFE);
    }
  }
  
  public void addALife() {
    this.livesLeft++;
    lifeImages.add(LIFE);
  }

  public void initializeGame()
  {
    if (levels == null) {
      this.numberOfStages = new ArrayList<Integer>();
      this.levels = new ArrayList<Level>();

      // initialize game level's # of stages...
      /*this.numberOfStages.add(3);
      this.numberOfStages.add(2);
      this.numberOfStages.add(1);
      this.numberOfStages.add(2);
      this.numberOfStages.add(2);
      this.numberOfStages.add(1);
      this.numberOfStages.add(2);
      this.numberOfStages.add(2);
      this.numberOfStages.add(3);
      this.numberOfStages.add(1);
      this.numberOfStages.add(1);
      this.numberOfStages.add(1);
      this.numberOfStages.add(1);
      this.numberOfStages.add(2);
      this.numberOfStages.add(1);*/
    
      String[] lines = loadStrings("nstages.dat");
      for (int i = 0; i < lines.length; i++){
       this.numberOfStages.add(Integer.parseInt(lines[i])); 
      }

      // use NUMBEROFLEVELS?
      for (int i = 0; i < numberOfStages.size(); i++) {
        this.levels.add(new Level(i, numberOfStages.get(i)));
      }
    }
    else {
      for (int i = currentLevelID; i >= 0 ; i--) {
        this.levels.get(i).reloadLevel();
      }
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

    this.getMainPlayer().setPosition(position, false);
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
  
  public ArrayList<Item> getItems() {
    return getLevel().getStage().items;
  }

  public void moveAI() {
    ArrayList<AI> ai = this.getAI();

    for (int i = 0; i < ai.size(); i++) {
      ai.get(i).move();
    }
  }
  
  public Boolean isPaused() {
    return paused;
  }

  public void togglePause() {
    if (!paused)
      paused = true;
    else
      paused = false;
  }

  public void pause() {
    paused = true;    
  }
  
  public void unPause() {
    paused = false;    
  }

  public void draw() {
    background(GAMEBG);
    moveAI();
    this.getLevel().draw();
    textSize(24);
    fill(204);
    textAlign(LEFT);
    text("Lives: ", 50, SCREENHEIGHT - 50, SCREENWIDTH, 50);
    
    for (int i = 0; i < lifeImages.size(); i++) {
      image(lifeImages.get(i), 125 + (25 * i), SCREENHEIGHT - 45, 25, 25);
    }
    
    textAlign(RIGHT);
    text("Level: " + (game.currentLevelID + 1) + " Stage: " + (getStage().id + 1), 50, SCREENHEIGHT - 50, SCREENWIDTH - 100, 50);
    
    muteButton.draw();
  }
  
  public int getAction() {
    if (paused) {
      return INGAMEMENU;
    }
    else if (livesLeft <= 0) {
      game.newGame();
      return GAMEOVERSPLASH;
    }
    else {
      return GAME;
    }
  }

    public void die() {
      livesLeft--;
      
      if (lifeImages.size() > 0) {
        lifeImages.remove(lifeImages.size() - 1);
      }
      
    }
  }

