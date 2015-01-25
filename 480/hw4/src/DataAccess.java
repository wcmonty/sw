import java.sql.*;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.io.InputStream;
import java.util.Properties;

/**
 * DataAccess interfaces with the database
 * @author William Montgomery
 *
 */
public class DataAccess {
	
	
	/* The following should probably not be edited manually!
	 *  These are defaults and are overridden by the file
	 *  config.properties.  Please change database connection
	 *  values in config.properties, not here! 
	 */
	/** The connection string */
	static String connectionName = "jdbc:mysql://localhost:3306/";
	
	/** The username for the database */
	static String user = "";
	
	/** The password for the database */
	static String pass = "";
	
	/** The name of the database to create */
	static String dbname = "wmontg2CS480hw4";

	/** The database driver string */
	static final String driver = "com.mysql.jdbc.Driver";

	/** The database connection */
	Connection conn = null;
	
	/** The database statement */
	private Statement statement = null;
	
	/**
	 * Constructor
	 */
	public DataAccess() {
		setupProperties();
		setupConnection();
		getConnection();
	}

	/** 
	 * Gets a connection
	 */
	private void getConnection() {
		try {
			conn = DriverManager.getConnection(connectionName, user, pass);
			statement = conn.createStatement();
		}
		catch(Exception ex) {
			ex.printStackTrace();
			System.exit(3);
		}
	}

	/**
	 * Sets up a connection
	 */
	private void setupConnection() {
		try {
			Class.forName(driver).newInstance();
		}
		catch(ClassNotFoundException ex) {
			ex.printStackTrace();
			System.exit(1);
		}
		catch(IllegalAccessException ex) {
			ex.printStackTrace();
			System.exit(2);
		}
		catch(InstantiationException ex) {
			ex.printStackTrace();
			System.exit(3);
		}
	}

	/**
	 * Sets up the properties
	 */
	private void setupProperties() {
		Properties prop = new Properties();
		InputStream input = null;
		
		// Set up the connection info
		try {
	 
			input = new FileInputStream("config.properties");
	 
			// load a properties file
			prop.load(input);
	 
			if(prop.containsKey("dbusername")){
				user = prop.getProperty("dbusername");
			}
			
			if (prop.containsKey("dbpassword")){
				pass = prop.getProperty("dbpassword");
			}
			if (prop.contains("dbname")){
				dbname = prop.getProperty("dbname");
			}
			
			if (prop.contains("dbserver") && prop.contains("dbport")){
				connectionName = "jdbc:mysql://" + prop.getProperty("dbserver") + ":" + prop.getProperty("dbport") + "/";
			} 
			else if (prop.contains("dbserver")){
				connectionName = "jdbc:mysql://" + prop.getProperty("dbserver") + "/";
			}
	 	} 
		catch (IOException ex) {
			ex.printStackTrace();
		} 
		finally {
			if (input != null) {
				try {
					input.close();
				} 
				catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	/**
	 * Drops the created database and tears down the connection
	 */
	protected void pulldownDatabase()
	{
		try {
			statement.executeUpdate("DROP DATABASE " + dbname);
		}
		catch (Exception ex) {
			System.out.println(ex.toString());
		}

		try {
			conn.close();
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	/**
	 * Creates a database, including the schema
	 */
	public void setupDatabase()
	{
		try {
			statement.executeUpdate("CREATE DATABASE " + dbname);
			
			statement.executeUpdate("USE " + dbname);
			
			statement.executeUpdate("CREATE TABLE employee " +
					"(eid INT PRIMARY KEY, " +
					"name VARCHAR(20), " +
					"salary INT)");
			
			statement.executeUpdate("CREATE TABLE worksfor " +
					"(eid INT NOT NULL, " +
					"mid INT NOT NULL, " +
					"PRIMARY KEY (eid, mid), " +
					"FOREIGN KEY (eid) REFERENCES employee(eid) ON DELETE CASCADE ON UPDATE CASCADE, " +
					"FOREIGN KEY (mid) REFERENCES employee(eid) ON DELETE CASCADE ON UPDATE CASCADE)");
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	/**
	 * Inserts a person into the database
	 * @param person
	 */
	public void insertPerson(Person person)
	{
		// Sets up the database connection
		ArrayList<Integer> employees = person.getEmployees();
		String sql = "INSERT INTO employee " +
				"(eid, name, salary) VALUES " +
				"(" + person.getId() + ", '" + person.getName() + "', " + person.getSalary() + ")";
		
		// Executes the statement
		try
		{
			statement.executeUpdate(sql);
			for (int i = 0; i < employees.size(); i++){
				insertEmployee(person.getId(), employees.get(i));
			}
			System.out.println("done");
		}
		catch (Exception ex)
		{
			System.out.println("error");
		}
	}
	
	/**
	 * Inserts an employee/manager relationship into the database
	 * @param employee The employee
	 * @param manager The manager
	 * @throws Exception
	 * @todo Should this throw an exception?
	 */
	private void insertEmployee(Integer employee, Integer manager) throws Exception
	{
		// Sets up the SQL string
		String sql = "INSERT INTO worksfor " +
				"(eid, mid) VALUES " +
				"(" + employee + ", " + manager +")";
		
		// Executes the query
		statement.executeUpdate(sql);
	}

	/**
	 * Deletes a person from the database.  Deletes from worksfor relation using cascading delete.
	 * @param person The person
	 */
	public void deletePerson(Person person) {
		// Set up the SQL string
		String sql = "DELETE FROM employee " +
				"WHERE eid = " + person.getId();
		
		// Executes the query
		try {
			int numRows = statement.executeUpdate(sql);
			if (numRows == 0) {
				System.out.println("error");
			}
			else {
				System.out.println(numRows);	
			}			
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	/**
	 * Gets the average salary of all employees
	 * @return The average salary
	 */
	public Integer averageSalary() {
		// Set up SQL string
		String sql = "SELECT AVG(salary) " +
				"FROM employee ";
		
		// Executes the query
		ResultSet rs = null;
		try {
			rs = statement.executeQuery(sql);
			if(rs.next()){
				return rs.getInt(1);
			}
		}
		catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("error");
		}
		return -1;
	}

	/**
	 * Gets the names of users that have multiple direct managers
	 * @return The names
	 */
	public ArrayList<String> getNamesOfMultipleManagers() {
		// Sets up the SQL string
		String sql = "SELECT e.name " +
				"FROM employee AS e NATURAL JOIN (" +
					"SELECT wf.eid " +
					"FROM worksfor AS wf " +
					"GROUP BY wf.eid " +
					"HAVING count(*) > 1) AS w";

		// Executes the query
		ArrayList<String> results = new ArrayList<String>();
		ResultSet rs = null;
		try {
			rs = statement.executeQuery(sql);
			while (rs.next()){
				results.add(rs.getString(1));
			}
		}
		catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("error");
		}
		return results;
	}
	
	/**
	 * Gets the names of users that have multiple indirect managers
	 * @return The names
	 */
	public ArrayList<String> getNamesOfMultipleIndirectManagers() {
		// Sets up the SQL string
		String sql = "SELECT DISTINCT (name) " +
				"FROM (SELECT e.name AS name " +
				"FROM employee AS e " +
				"NATURAL JOIN (SELECT wf.eid " +
				"FROM worksfor AS wf " +
				"GROUP BY wf.eid " +
				"HAVING count(*) > 1) AS w " + 
				"UNION " +
				"SELECT employee.name " +
				"FROM employee " +
				"NATURAL JOIN (SELECT wf1.eid " +
				"FROM worksfor AS wf1 " +
				"JOIN worksfor AS wf2 ON wf1.mid = wf2.eid) AS w2) AS q";

		// Executes the query
		ArrayList<String> results = new ArrayList<String>();
		ResultSet rs = null;
		try {
			rs = statement.executeQuery(sql);
			while (rs.next()){
				results.add(rs.getString(1));
			}
		}
		catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("error");
		}
		return results;
	}
	
	/**
	 * Gets the average salary of a list of ids
	 * @param ids The list of employee ids
	 * @return The average salary
	 */
	public Integer averageSalaryOfEmployeesFromIDs(ArrayList<Integer> ids) {
		// Set up the SQL string
		String idList = "";
		for (Integer id : ids) {
			idList = idList.concat(id.toString() + ", ");
		}
		if (idList.length() > 0){
			idList = idList.substring(0, idList.length() - 2);
		}
		else {
			return 0;
		}
		String sql = "SELECT AVG(salary) " +
				"FROM employee " +
				"WHERE eid IN (" + idList + ")";
	
		
		// Executes the statement
		ResultSet rs = null;
		try {
			rs = statement.executeQuery(sql);

			if(rs.next()){
				return rs.getInt(1);
			}
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}
	
		// Default if we get here
		return 0;
	}

	/**
	 * Gets the eids of all of the employees that a person manages 
	 * @param id The id of the manager
	 * @return The list of ids
	 */
	public ArrayList<Integer> getEmployeeIDSOfEmployees(Integer id) {
		// Sets up the SQL string
		String sql = "SELECT eid " +
				"FROM worksfor " +
				"WHERE mid = " + id;
		
		// Performs the query
		ArrayList<Integer> employees = new ArrayList<Integer>();
		ResultSet rs = null;
		try {
			rs = statement.executeQuery(sql);

			while(rs.next()){
				employees.add(rs.getInt(1));
			}
			
			ArrayList<Integer> employeesEmployees = new ArrayList<Integer>();
			for (Integer x : employees){
				ArrayList<Integer> temp = new ArrayList<Integer>();
				temp = this.getEmployeeIDSOfEmployees(x);
				for (Integer y : temp) {
					if (!employeesEmployees.contains(y)){
						employeesEmployees.add(y);
					}
				}
			}
			employees.addAll(employeesEmployees);
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}	
		
		return employees;
	}

	/**
	 * Gets the employee names from a list of employee ids
	 * @param ids
	 * @return The list of names
	 */
	public ArrayList<String> getEmployeeNamesFromIDS(ArrayList<Integer> ids) {
		// Set up the SQL string
		String idList = "";
		ResultSet rs = null;
		ArrayList<String> names = new ArrayList<String>();
		
		for (Integer id : ids) {
			idList = idList.concat(id.toString() + ", ");
		}
		if (idList.length() > 0){
			idList = idList.substring(0, idList.length() - 2);
		}
		else {
			return names;
		}
		String sql = "SELECT name " +
				"FROM employee " +
				"WHERE eid IN (" + idList + ")";
	
		// Execute the query
		try {
			rs = statement.executeQuery(sql);

			while(rs.next()){
				names.add(rs.getString(1));
			}
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}
	
		return names;
	}
}