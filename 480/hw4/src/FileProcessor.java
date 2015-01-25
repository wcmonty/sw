import java.io.IOException;
import java.io.FileReader;
import java.io.BufferedReader;

/**
 * FileProcessor processes a file of input data.
 * @author William Montgomery
 *
 */
public class FileProcessor {
	/** The path to the transfile */
	private String path;
	
	/** The data access object */
	DataAccess da = null;

	/**
	 * Constructor
	 * @param path The path name to the file to process 
	 * @param da The DataAccess object
	 */
	public FileProcessor(String path, DataAccess da) {
		this.path = path;
		this.da = da;
	}
	
	/**
	 * Opens and processes the file
	 * @throws IOException
	 */
	public void open_file() throws IOException {
		FileReader fr = new FileReader(path);
		BufferedReader textReader = new BufferedReader(fr);
		
		String line;
		
		while ((line = textReader.readLine()) != null) {
		    process(line);
		}
		
		textReader.close();
	}
	
	/**
	 * Processes a line of the file.
	 * @param line The line to process
	 * @precondition The line is valid
	 */
	private void process(String line)
	{
		// Ignore comment lines
		if (line.charAt(0) == '*') return;
		
		try {
			Command command = new Command(line);
			command.execute(da);
		}
		catch (Exception ex){
			ex.printStackTrace();
		}
	}
}
