import java.util.ArrayList;

/**
 * Person represents a single person
 * @author William Montgomery
 *
 */
public class Person {
	private Integer id;
	private String name = "";
	private Integer salary = 0;
	ArrayList<Integer> employees = new ArrayList<Integer>();

	/**
	 * Constructor
	 * @param id The id
	 */
	public Person(Integer id) {
		super();
		this.id = id;
	}

	/**
	 * Constructor
	 * @param id The id
	 * @param name The name
	 * @param salary The salary
	 */
	public Person(Integer id, String name, Integer salary) {
		super();
		this.id = id;
		this.name = name;
		this.salary = salary;
	}

	/**
	 * Converts to a string
	 */
	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", salary=" + salary
				+ ", employees=" + employees + "]";
	}

	/**
	 * Getter for id
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * Setter for id
	 * @param id
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * Getter for name
	 * @return name
	 */
	public String getName() {
		return name;
	}

	/**
	 * Setter for name
	 * @param name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * Getter for salary
	 * @return salary
	 */
	public int getSalary() {
		return salary;
	}

	/**
	 * Setter for salary
	 * @param salary The salary
	 */
	public void setSalary(Integer salary) {
		this.salary = salary;
	}

	/**
	 * Getter for employees
	 * @return The employees
	 */
	public ArrayList<Integer> getEmployees() {
		return employees;
	}
	
	/**
	 * Adds an employee id to the list of employee ids
	 * @param employeeID The employee id
	 */
	public void addEmployee(Integer employeeID) {
		employees.add(employeeID);
	}
}