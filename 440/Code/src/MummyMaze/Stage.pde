import java.io.FileInputStream;
import java.util.Scanner;

public class Stage {


  public ArrayList<ArrayList<Space>> spaces;
  public ArrayList<ArrayList<Character>> cachedSpaces;

  public Integer id;
  public Integer levelID;
  public ArrayList<AI> ai;
  public String fileName;
  public MainPlayer mainPlayer;
  public ArrayList<Item> items;

  public Stage(int levelID, int id) {
    this.levelID = levelID;
    this.id = id;
    this.fileName = this.levelID.toString() + "." + this.id.toString() + ".dat";

    this.initializeSpaces();
  }

  public void reloadStage() {
    this.initializeSpaces();
  }

  public void initializeSpaces() {
    ArrayList<ArrayList<Character>> stageChars;

    if (cachedSpaces == null) {
      stageChars = readStageFromFile(this.fileName);
      cachedSpaces = stageChars;
    }
    else {
      stageChars = cachedSpaces;
    }

    this.spaces = new ArrayList<ArrayList<Space>>();
    this.ai = new ArrayList<AI>();
    this.items = new ArrayList<Item>();

    // parse characters (stageChars) into spaces...
    /*
     *** LEGEND FOR SPACE / AI CHARACTER CONVERSIONS ***
     * '-' = Path
     * 'M' = Mummy
     * 'B' = Bat
     * 'G' = Ghost
     * 'T' = Statue
     * 'L' = Life
     * '+' = Activated Barrier
     * '=' = Deactivated Barrier
     * 'D' = Barrier Deactivator
     * 'A' = Barrier Activator
     * '@' = Barrier Switch
     * 'b' = BoobyTrap
     * '*' = Wall
     * 'W' = Water
     * 'E' = Exit
     * 'ANY INTEGER 0-9' = Ladder
     */
    for (int i = 0; i < stageChars.size(); i++) {
      this.spaces.add(new ArrayList<Space>());

      for (int j = 0; j < stageChars.get(i).size(); j++) {
        if (stageChars.get(i).get(j).equals('-') 
          || stageChars.get(i).get(j).equals('M') 
          || stageChars.get(i).get(j).equals('G')
          || stageChars.get(i).get(j).equals('B')
          || stageChars.get(i).get(j).equals('T')
          || stageChars.get(i).get(j).equals('S')
          || stageChars.get(i).get(j).equals('L')
          || stageChars.get(i).get(j).equals('b')
          || stageChars.get(i).get(j).equals('+')
          || stageChars.get(i).get(j).equals('=')
          || stageChars.get(i).get(j).equals('D')
          || stageChars.get(i).get(j).equals('A')
          || stageChars.get(i).get(j).equals('@')) {
          if (stageChars.get(i).get(j).equals('M')) {
            this.ai.add(new Mummy(new Coordinate(j, i)));
          }
          else if (stageChars.get(i).get(j).equals('B')) {
            this.ai.add(new Bat(new Coordinate(j, i)));
          }
          else if (stageChars.get(i).get(j).equals('S')) {
            this.mainPlayer = new MainPlayer(new Coordinate(j, i));
          }
          else if (stageChars.get(i).get(j).equals('G')) {
            this.ai.add(new Ghost(new Coordinate(j, i)));
          }
          else if (stageChars.get(i).get(j).equals('T')) {
            this.ai.add(new Statue(new Coordinate(j, i)));
          }
          else if (stageChars.get(i).get(j).equals('L')) {
            this.items.add(new Life(new Coordinate(j, i)));
          }
          else if (stageChars.get(i).get(j).equals('b')) {
            this.items.add(new BoobyTrap(new Coordinate(j, i)));
          }
          else if (stageChars.get(i).get(j).equals('+')) {
            this.items.add(new Barrier(new Coordinate(j, i), true));
          }
          else if (stageChars.get(i).get(j).equals('=')) {
            this.items.add(new Barrier(new Coordinate(j, i), false));
          }
          else if (stageChars.get(i).get(j).equals('D')) {
            this.items.add(new BarrierDeactivator(new Coordinate(j, i)));
          }
          else if (stageChars.get(i).get(j).equals('A')) {
            this.items.add(new BarrierActivator(new Coordinate(j, i)));
          }
          else if (stageChars.get(i).get(j).equals('@')) {
            this.items.add(new BarrierSwitch(new Coordinate(j, i)));
          }

          // add path to this space...
          this.spaces.get(i).add(new Path(new Coordinate(j, i)));
        }
        else if (stageChars.get(i).get(j).equals('*')) {
          this.spaces.get(i).add(new Wall(new Coordinate(j, i)));
        }
        else if (stageChars.get(i).get(j).equals('W')) {
          this.spaces.get(i).add(new Water(new Coordinate(j, i)));
        }
        else if (stageChars.get(i).get(j).equals('E')) {
          this.spaces.get(i).add(new Exit(new Coordinate(j, i)));
        }
        else if (Character.isDigit(stageChars.get(i).get(j))) {
          this.spaces.get(i).add(new Ladder(new Coordinate(j, i), Character.getNumericValue(stageChars.get(i).get(j))));
        }
        else {
          println("ERROR: INVALID CHARACTER FOUND IN STAGE FILE");
        }
      }
    }
  }

  public ArrayList<ArrayList<Character>> readStageFromFile(String fileName) {
    ArrayList<ArrayList<Character>> stageChars = new ArrayList<ArrayList<Character>>();

   try {
      String[] lines = loadStrings(fileName);
      for (int i = 0; i < lines.length; i++) {
        stageChars.add(new ArrayList<Character>());
        for (int j = 0; j < lines[i].length(); j++) {
          if (!Character.isWhitespace(lines[i].charAt(j))) {
            stageChars.get(i).add(lines[i].charAt(j));
          }
        }
      }
    }
    catch (Exception e) {
      // do nothing...
    }
    return stageChars;
  }

  public void draw() {
    for (int i = 0; i < this.spaces.size(); i++) {
      for (int j = 0; j < this.spaces.get(i).size(); j++) {
        this.spaces.get(i).get(j).draw();
      }
    }

    for (int i = 0; i < this.items.size(); i++) {
      this.items.get(i).draw();
    }

    for (int i = 0; i < this.ai.size(); i++) {
      this.ai.get(i).draw();
    }

    this.mainPlayer.draw();
  }
}

