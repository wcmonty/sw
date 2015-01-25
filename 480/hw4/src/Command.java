import java.util.ArrayList;

/**
 * 
 * @author William Montgomery
 *
 */
public class Command {
	private int code;
	private Person person;
	
	/**
	 * Constructor 
	 * @param line A single line from the transfile
	 * @throws Exception
	 */
	public Command(String line) throws Exception {
		// Tokenize the line
		line = line.replaceAll("\\s+", " ");
		String[] tokens = line.split(" ");
		
		// Set and check the command code
		code = Integer.parseInt(tokens[0]);
		if (code < 1 || code > 6) {
			throw new Exception();
		}
		
		// Set up other fields
		switch(code){
		case 1: // fall-through
		case 4: // fall-through
		case 5:
			person = new Person (new Integer(tokens[1]));
			break;
		
		case 2:
			person = new Person (new Integer(tokens[1]), tokens[2], new Integer(tokens[3]));

			for(int i = 4; i < tokens.length; i++){
				person.addEmployee(new Integer(tokens[i]));
			}
			break;
		
		default:
			break;
		}
	}

	/**
	 * Executes the command
	 * @param da The DataAccess object
	 */
	public void execute(DataAccess da)
	{
		ArrayList<Integer> ids = null;
		
		switch(code) {
		case 1:
			da.deletePerson(person);
			break;
		case 2:
			da.insertPerson(person);
			break;
		case 3:
			System.out.println(da.averageSalary().toString());
			break;
		case 4:
			ids = da.getEmployeeIDSOfEmployees(person.getId());
			System.out.println(da.getEmployeeNamesFromIDS(ids));
			break;
		case 5:
			ids = da.getEmployeeIDSOfEmployees(person.getId());
			System.out.println(da.averageSalaryOfEmployeesFromIDs(ids));
			break;
		case 6:
			ArrayList<String> people = da.getNamesOfMultipleIndirectManagers();
			if (people.size() > 0) {
				System.out.println(people);				
			}
			else {
				System.out.println("no employees with more than one manager");
			}
			break;
		default:
			break;
		}
		
	}
	
	/**
	 * Converts to a string
	 */
	@Override
	public String toString() {
		return "Command [code=" + code + ", person=" + person + "]";
	}
}
