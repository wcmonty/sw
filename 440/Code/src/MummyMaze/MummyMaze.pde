import ddf.minim.* ;
Minim minim;

AudioPlayer soundPlayer;

// DRAW CONSTANTS...
public final Integer SCREENWIDTH = 700;
public final Integer SCREENHEIGHT = 700;
public final Integer SPACESIZE = 30;
public final Integer NUMBEROFSPACES = 20;
public final Integer XOFFSET = 50;
public final Integer YOFFSET = 50;

// VIEW ENUM (CONSTANTS)...
public final int GAME = 1;
public final int SPLASH = 2;
public final int HIGHSCORES = 3;
public final int MENU = 4;
public final int GAMEOVERSPLASH = 5;
public final int INGAMEMENU = 6;
public final int GAMESAVED =7;

// MOVE ENUM (CONSTANTS)...
public final Integer MOVELEFT = 0;
public final Integer MOVERIGHT = 1;
public final Integer MOVEUP = 2;
public final Integer MOVEDOWN = 3;
// COLOR CONSTANTS
public final color BACKGROUND = 0;

// GAME STATE CONSTANTS...
public final Integer GAMELIVES = 4;
public final Integer PROGRESSDELAY = 2000;

public final Boolean DEBUGMODE = true;

private int CurrentView = SPLASH;

// LOAD Images once here
public PImage PATH0;
public PImage PATH1;
public PImage PATH2;
public PImage PATH3;

public PImage WATER0;
public PImage WATER1;
public PImage WATER2;
public PImage WATER3;

public PImage WALL0;
public PImage WALL1;
public PImage WALL2;
public PImage WALL3;

public PImage LADDER;

public PImage BOOBYTRAP;

public PImage ACTIVEBARRIER;
public PImage DEACTIVEBARRIER;
public PImage ACTIVATOR;
public PImage DEACTIVATOR;
public PImage BARRIERSWITCH;

public PImage EXIT;

public PImage MAINPLAYER;

public PImage MUMMY;
public PImage GHOST;
public PImage BAT;
public PImage STATUE;

public PImage LIFE;

public PImage LOGO;
public PImage COMNAME;
public PImage LEFTNAME;
public PImage RIGHTNAME;

public PImage MUMMYMENU;
public PImage GAMEBG;

public PImage MUTE;

public PImage GAMESAVE;

// GAME GLOBAL FUNCTIONS...
public Coordinate getScreenCoordinates(Coordinate position) {
  return getScreenCoordinates(position.x, position.y);
}

public Coordinate getScreenCoordinates(int xPosition, int yPosition) {
  return new Coordinate(XOFFSET + (xPosition * SPACESIZE), YOFFSET + (yPosition * SPACESIZE));
}

Game game;
Splash splash;
Menu menu;
GameOverSplash gameOverSplash;
InGameMenu inGameMenu;
GameSaved gameSaved;

void setup() {
  loadImages();
  
  size(SCREENWIDTH, SCREENHEIGHT);
  splash = new Splash();
  game = new Game();
  menu = new Menu();
  gameOverSplash = new GameOverSplash();
  inGameMenu = new InGameMenu();
  gameSaved = new GameSaved();
  
  minim = new Minim(this);
  soundPlayer = minim.loadFile("mummysound.mp3");
  
  soundPlayer.play();
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
  case MENU:
    menu.draw();
    CurrentView = menu.getAction();
    break;
  case GAMEOVERSPLASH:
    gameOverSplash.draw();
    CurrentView = gameOverSplash.getAction();
    break;
  case INGAMEMENU:
    inGameMenu.draw();
    CurrentView = inGameMenu.getAction();
    break;
  case GAMESAVED:
    gameSaved.draw();
    CurrentView = gameSaved.getAction();
    break;
  default:
    splash.draw();
    break;
  }
}

Character lastChar = 'd';

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
    if (Character.isDigit(key)) {// && Character.getNumericValue(key) < game.NumberOfLevels()) {

      int level = 0;

      if (Character.isDigit(lastChar)) {
        String s = lastChar.toString() + (new Character(key)).toString();

        println(s);

        level = Integer.parseInt(s);

        if (level >= game.NumberOfLevels()) {
          level = 0;
        }
      }
      else {
        level = Character.getNumericValue(key);
      }

      game.changeLevel(level);
      game.changeLivesLeft(GAMELIVES);
      game.reloadCurrentLevel();
    }
    else if (key == 'r') {
      game.reloadCurrentLevel();
    }
    else if (key == 'n') {
      game.newGame();
    }
    else if (key == 'p') {
      game.togglePause();
    }

    lastChar = new Character(key);
  }
}

void stop()
{
 minim.stop();
 super.stop();
}

private void loadImages() {
  PATH0 = loadImage("floor0.png");
  PATH1 = loadImage("floor1.png");
  PATH2 = loadImage("floor2.png");
  PATH3 = loadImage("floor3.png");
  WATER0 = loadImage("water0.png");
  WATER1 = loadImage("water1.png");
  WATER2 = loadImage("water2.png");
  WATER3 = loadImage("water3.png");
  WALL0 = loadImage("wall0.png");
  WALL1 = loadImage("wall1.png");
  WALL2 = loadImage("wall2.png");
  WALL3 = loadImage("wall3.png");
  LADDER = loadImage("ladder.png");
  BOOBYTRAP = loadImage("boobytrap.png");
  ACTIVEBARRIER = loadImage("barrier.png");
  DEACTIVEBARRIER = loadImage("deactivebarrier.png");
  ACTIVATOR = loadImage("activator.png");
  DEACTIVATOR = loadImage("deactivator.png");
  BARRIERSWITCH = loadImage("barrierswitch.png");
  EXIT = loadImage("exit.png");
  MAINPLAYER = loadImage("explorer_small.png");
  MUMMY = loadImage("mummy.png");
  GHOST = loadImage("ghost.png");
  BAT = loadImage("bat_small.png");
  STATUE = loadImage("statue.png");
  LIFE = loadImage("explorer_smaller.png");
  LOGO = loadImage("logo.png");
  COMNAME = loadImage("company_name.png");
  LEFTNAME = loadImage("left_name.png");
  RIGHTNAME = loadImage("right_name.png");
  MUMMYMENU = loadImage("mummy_menu.png");
  GAMEBG = loadImage("cave.jpg");
  MUTE = loadImage("speaker.png");
  GAMESAVE = loadImage("1.png");
}

