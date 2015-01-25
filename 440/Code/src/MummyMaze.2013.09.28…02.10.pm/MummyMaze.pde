// DRAW CONSTANTS...
public final Integer SCREENWIDTH = 600;
public final Integer SCREENHEIGHT = 600;
public final Integer SPACESIZE = 40;
public final Integer NUMBEROFSPACES = 20;
public final Integer XOFFSET = 100;
public final Integer YOFFSET = 100;

// VIEW ENUM (CONSTANTS)...
public final Integer GAME = 0;
public final Integer SPLASH = 1;
public final Integer HIGHSCORES = 2;
public final Integer MENU = 3;

public Integer CurrentView = GAME;

public Coordinate getScreenCoordinates(int xPosition, int yPosition) {
  return new Coordinate(XOFFSET + (xPosition * SPACESIZE), YOFFSET + (yPosition * SPACESIZE));
}

Game Game;

void setup() {
  size(SCREENWIDTH, SCREENHEIGHT);
  Game = new Game();
  println("hello");
}

void draw() {
  
}
