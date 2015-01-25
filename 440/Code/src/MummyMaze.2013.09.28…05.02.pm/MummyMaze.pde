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
public final int GAME = 0;
public final int SPLASH = 1;
public final int HIGHSCORES = 2;
public final int MENU = 3;

// MOVE ENUM (CONSTANTS)...
public final Integer MOVELEFT = 0;
public final Integer MOVERIGHT = 1;
public final Integer MOVEUP = 2;
public final Integer MOVEDOWN = 3;

public Integer CurrentView = GAME;

public Coordinate getScreenCoordinates(Coordinate position) {
  return getScreenCoordinates(position.x, position.y);
}

public Coordinate getScreenCoordinates(int xPosition, int yPosition) {
  return new Coordinate(XOFFSET + (xPosition * SPACESIZE), YOFFSET + (yPosition * SPACESIZE));
}

Game Game;

void setup() {
  size(SCREENWIDTH, SCREENHEIGHT);
  
  println("hello");
  
  Game = new Game();
}

void draw() {
  if (CurrentView == GAME) {
    Game.draw();
  }
  else if (CurrentView == GAME) {
    
  }
  else if (CurrentView == SPLASH) {
    
  }
  else if (CurrentView == HIGHSCORES) {
    
  }
  else if (CurrentView == MENU) {
    
  }
  else {
    println("ERROR: INVALID GAME STATE -> INVALID VIEW");
  }
}

void keyPressed() {
  
  
}

