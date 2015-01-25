import java.io.IOException;

/**
 * MainClass is the program driver.
 * @author William Montgomery
 */
public class MainClass {
	
	/** The DataAccess layer. */
	static private DataAccess da = null;
	
	/**
	 * The program's main method.
	 * @param args Command line arguments
	 */
	public static void main(String[] args) {
		// Create the data access object
		da = new DataAccess();
		da.setupDatabase();

		// Process the transfile
		FileProcessor fp = new FileProcessor ("transfile", da);
		try {
			fp.open_file();
		}
		catch (IOException e) {
			System.out.println(e);
		}
	
		// Delete the database and disconnect
		da.pulldownDatabase();
	}
}
