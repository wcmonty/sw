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
    
    initializeSpaces();
  }
  
  public void initializeSpaces() {
    fileName = levelID.toString() + id.toString();
    
    ArrayList<ArrayList<Character>> stageChars = readStageFromFile(this.fileName);
    
    for (int i = 0; i < stageChars.size(); i++) {
      for (int j = 0; j < stageChars.size(); j++) {
        
      }
    }
  }
  
  public ArrayList<ArrayList<Character>> readStageFromFile(String fileName) {
    ArrayList<ArrayList<Character>> stageChars = new ArrayList<ArrayList<Character>>();
    
    FileInputStream inputStream;
    
    try {
      inputStream = new FileInputStream("/Data/" + fileName);
    }
    catch (Exception e) {
      inputStream = null;
    }
    
    Scanner scanner = new Scanner(inputStream);
    
    int row = 0;
    
    while (scanner.hasNextLine()) {
      String line = scanner.nextLine();
      
      stageChars.add(new ArrayList<Character>());
      
      for (int i = 0; i < line.length(); i++) {
        stageChars.get(row).add(line.charAt(i));
      }
      
      row++;
    }
    
    if (inputStream != null) {
      try {
        inputStream.close();
      }
      catch (Exception e) {
        // do nothing...
      }
    }
    
    return stageChars;
  }
  
  public void draw() {
    
  } 
}
