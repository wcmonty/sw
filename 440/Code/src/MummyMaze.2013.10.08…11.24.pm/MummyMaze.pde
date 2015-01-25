// DRAW CONSTANTS...
public final Integer SCREENWIDTH = 700;
public final Integer SCREENHEIGHT = 700;
public final Integer SPACESIZE = 30;
public final Integer NUMBEROFSPACES = 20;
public final Integer XOFFSET = 50;
public final Integer YOFFSET = 50;

// MISC CONSTANTS...
public final String PATH = "/Users/Jeff/Documents/cs440/Coding Project/Code/src/MummyMaze/data/";

// VIEW ENUM (CONSTANTS)...
public final int GAME = 1;
public final int SPLASH = 2;
public final int HIGHSCORES = 3;
public final int MENU = 4;
public final int GAMEOVERSPLASH = 5;

// MOVE ENUM (CONSTANTS)...
public final Integer MOVELEFT = 0;
public final Integer MOVERIGHT = 1;
public final Integer MOVEUP = 2;
public final Integer MOVEDOWN = 3;
// COLOR CONSTANTS
public final color BACKGROUND = 0;

// GAME STATE CONSTANTS...
public final Integer GAMELIVES = 4;

public final Boolean DEBUGMODE = true;

private int CurrentView = SPLASH;

// LOAD Images once here
public final PImage PATH0 = loadImage(PATH + "floor0.png");
public final PImage PATH1 = loadImage(PATH + "floor1.png");
public final PImage PATH2 = loadImage(PATH + "floor2.png");
public final PImage PATH3 = loadImage(PATH + "floor3.png");

public final PImage WATER0 = loadImage(PATH + "water0.png");
public final PImage WATER1 = loadImage(PATH + "water1.png");
public final PImage WATER2 = loadImage(PATH + "water2.png");
public final PImage WATER3 = loadImage(PATH + "water3.png");

public final PImage WALL0 = loadImage(PATH + "wall0.png");
public final PImage WALL1 = loadImage(PATH + "wall1.png");
public final PImage WALL2 = loadImage(PATH + "wall2.png");
public final PImage WALL3 = loadImage(PATH + "wall3.png");

public final PImage LADDER = loadImage(PATH + "ladder.png");

public final PImage EXIT = loadImage(PATH + "exit.png");

public final PImage MUMMY = loadImage(PATH + "mummy.png");
public final PImage BAT = loadImage(PATH + "bat_small.png");

public final PImage LOGO = loadImage(PATH + "logo.png");
public final PImage COMNAME = loadImage(PATH + "company_name.png");
public final PImage LEFTNAME = loadImage(PATH + "left_name.png");
public final PImage RIGHTNAME = loadImage(PATH + "right_name.png");



// GAME GLOBAL FUNCTIONS...
public Coordinate getScreenCoordinates(Coordinate position) {
  return getScreenCoordinates(position.x, position.y);
}

public Coordinate getScreenCoordinates(int xPosition, int yPosition) {
  return new Coordinate(XOFFSET + (xPosition * SPACESIZE), YOFFSET + (yPosition * SPACESIZE));
}

Game game;
Splash splash;
HighScores highScores;
Menu menu;
GameOverSplash gameOverSplash;

void setup() {
  size(SCREENWIDTH, SCREENHEIGHT);
  background(0);
  splash = new Splash();
  highScores = new HighScores();
  game = new Game();
  menu = new Menu();
  gameOverSplash = new GameOverSplash();
}

void draw() {
  switch (CurrentView) {
  case GAME:
    game.draw();
    CurrentView = game.getAction();
    break;
  case SPLASH:
    splash.draw();
    CurrentView = splash.getAction();
    break; 
  case HIGHSCORES:
    highScores.draw();
    CurrentView = highScores.getAction();
    break;
  case MENU:
    menu.draw();
    CurrentView = menu.getAction();
    break;
  case GAMEOVERSPLASH:
    gameOverSplash.draw();
    CurrentView = menu.getAction();
    break;
  default:
    splash.draw();
    break;
  }
}

void keyPressed() {
  if (CurrentView == GAME) {
    if (keyCode == RIGHT) {
      game.getMainPlayer().attemptMove(MOVERIGHT);
    }
    else if (keyCode == LEFT) {
      game.getMainPlayer().attemptMove(MOVELEFT);
    }
    else if (keyCode == UP) {
      game.getMainPlayer().attemptMove(MOVEUP);
    }
    else if (keyCode == DOWN) {
      game.getMainPlayer().attemptMove(MOVEDOWN);
    }
  }  
  if (DEBUGMODE) {
    if (Character.isDigit(key) && Character.getNumericValue(key) < game.NumberOfLevels()) {
      game.changeLevel(Character.getNumericValue(key));
      game.reloadCurrentLevel();
    }
    else if (key == 'n') {
      game.newGame();
    }
  }
}

