import java.io.FileInputStream;
import java.util.Scanner;

public class Stage {
  
  
  public ArrayList<ArrayList<Space>> spaces;
  public Integer id;
  public Integer levelID;
  public ArrayList<AI> ai;
  public String fileName;
  public MainPlayer mainPlayer;
  
  public Stage(int levelID, int id) {
    this.levelID = levelID;
    this.id = id;
    this.fileName = PATH + this.levelID.toString() + "." + this.id.toString() + ".dat";
    
    initializeSpaces();
  }
  
  public void initializeSpaces() {
    ArrayList<ArrayList<Character>> stageChars = readStageFromFile(this.fileName);
    
    this.spaces = new ArrayList<ArrayList<Space>>();
    this.ai = new ArrayList<AI>();
    
    // parse characters (stageChars) into spaces...
    /*
     *** LEGEND FOR SPACE / AI CHARACTER CONVERSIONS ***
     * '-' = Path
     * 'M' = Mummy
     * 'B' = Bat
     * '*' = 
     * 'W' = 
     * 'E' = 
     * 'ANY INTEGER 0-9' = Ladder
     */
    for (int i = 0; i < stageChars.size(); i++) {
      this.spaces.add(new ArrayList<Space>());
      
      for (int j = 0; j < stageChars.get(i).size(); j++) {
        //print("" + stageChars.get(i).get(j));
        // spaces.get(i).add(new Space());
        if (stageChars.get(i).get(j).equals('-') 
            || stageChars.get(i).get(j).equals('M') 
            || stageChars.get(i).get(j).equals('B')
            || stageChars.get(i).get(j).equals('S')) {
          if (stageChars.get(i).get(j).equals('M')) {
            this.ai.add(new Mummy(new Coordinate(j, i)));
          }
          else if (stageChars.get(i).get(j).equals('B')) {
            this.ai.add(new Bat(new Coordinate(j, i)));
          }
          else if (stageChars.get(i).get(j).equals('S')) {
            this.mainPlayer = new MainPlayer(new Coordinate(j, i));
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
      //println("");
    }
  }
  
  public ArrayList<ArrayList<Character>> readStageFromFile(String fileName) {
    ArrayList<ArrayList<Character>> stageChars = new ArrayList<ArrayList<Character>>();
    
    FileInputStream inputStream;
    
    try {
      inputStream = new FileInputStream(fileName);
    }
    catch (Exception e) {
      inputStream = null;
    }
    
    if (inputStream != null) {
      Scanner scanner = new Scanner(inputStream);
      
      int row = 0;
      
      while (scanner.hasNextLine()) {
        String line = scanner.nextLine();
        
        stageChars.add(new ArrayList<Character>());
        
        for (int i = 0; i < line.length(); i++) {
          if (!Character.isWhitespace(line.charAt(i))) {
            stageChars.get(row).add(line.charAt(i));
          }
        }
        
        row++;
      }
      
      try {
        inputStream.close();
      }
      catch (Exception e) {
        // do nothing...
      }
    }
    else {
      println("ERROR: COULD NOT OPEN STAGE FILE: " + fileName);
    }
    
    return stageChars;
  }
  
  public void draw() {
    for (int i = 0; i < this.spaces.size(); i++) {
      for (int j = 0; j < this.spaces.get(i).size(); j++) {
        this.spaces.get(i).get(j).draw();
      }
    }
    
    for (int i = 0; i < this.ai.size(); i++) {
      this.ai.get(i).draw();
    }
    
    this.mainPlayer.draw();
  } 
}
