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

// MOVE ENUM (CONSTANTS)...
public final Integer MOVELEFT = 0;
public final Integer MOVERIGHT = 1;
public final Integer MOVEUP = 2;
public final Integer MOVEDOWN = 3;
// COLOR CONSTANTS
public final color BACKGROUND = 0;

public int CurrentView = SPLASH;

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

void setup() {
  size(SCREENWIDTH, SCREENHEIGHT);
  
  
  splash = new Splash();
  highScores = new HighScores();
  game = new Game();
  menu = new Menu();
}

void draw() {
  switch (CurrentView) {
  case GAME:
    game.draw();
    game.moveAI();
    break;
  case SPLASH:
    splash.draw();
    CurrentView = splash.getAction();
    break; 
  case HIGHSCORES:
    highScores.draw();
    break;
  case MENU:
    menu.draw();
    break;
  default:
    splash.draw();
    break;
  }
}

void keyPressed() {
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

