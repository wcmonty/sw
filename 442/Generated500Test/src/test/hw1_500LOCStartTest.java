package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOCStartTest</code> contains tests for the class <code>{@link hw1_500LOCStart}</code>.
 *
 * @generatedBy CodePro at 3/28/14 10:59 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOCStartTest {
	/**
	 * Run the void entryMethod(int,int,int,int,int,int,int,int,int,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testEntryMethod_1()
		throws Exception {
		int i0 = 1;
		int i1 = 1;
		int i2 = 1;
		int i3 = 1;
		int i4 = 1;
		int i5 = 1;
		int i6 = 1;
		int i7 = 1;
		int i8 = 1;
		int i9 = 1;

		hw1_500LOCStart.entryMethod(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

		// add additional test code here
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testMain_1()
		throws Exception {
		String[] args = new String[] {};

		hw1_500LOCStart.main(args);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.ArrayIndexOutOfBoundsException: 0
		//       at test.hw1_500LOCStart.main(hw1_500LOCStart.java:31)
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testMain_2()
		throws Exception {
		String[] args = new String[] {null, "0", "0", "0", "0", "0", "0", "0", "0", "0"};

		hw1_500LOCStart.main(args);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.NumberFormatException: null
		//       at java.lang.Integer.parseInt(Integer.java:454)
		//       at java.lang.Integer.parseInt(Integer.java:527)
		//       at test.hw1_500LOCStart.main(hw1_500LOCStart.java:31)
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test(expected = java.lang.NumberFormatException.class)
	public void testMain_3()
		throws Exception {
		String[] args = new String[] {null, "a"};

		hw1_500LOCStart.main(args);

		// add additional test code here
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test(expected = java.lang.NumberFormatException.class)
	public void testMain_4()
		throws Exception {
		String[] args = new String[] {null, "0", "a"};

		hw1_500LOCStart.main(args);

		// add additional test code here
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test(expected = java.lang.NumberFormatException.class)
	public void testMain_5()
		throws Exception {
		String[] args = new String[] {null, "0", "0", "a"};

		hw1_500LOCStart.main(args);

		// add additional test code here
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test(expected = java.lang.NumberFormatException.class)
	public void testMain_6()
		throws Exception {
		String[] args = new String[] {null, "0", "0", "0", "a"};

		hw1_500LOCStart.main(args);

		// add additional test code here
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test(expected = java.lang.NumberFormatException.class)
	public void testMain_7()
		throws Exception {
		String[] args = new String[] {null, "0", "0", "0", "0", "a"};

		hw1_500LOCStart.main(args);

		// add additional test code here
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test(expected = java.lang.NumberFormatException.class)
	public void testMain_8()
		throws Exception {
		String[] args = new String[] {null, "0", "0", "0", "0", "0", "a"};

		hw1_500LOCStart.main(args);

		// add additional test code here
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test(expected = java.lang.NumberFormatException.class)
	public void testMain_9()
		throws Exception {
		String[] args = new String[] {null, "0", "0", "0", "0", "0", "0", "a"};

		hw1_500LOCStart.main(args);

		// add additional test code here
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test(expected = java.lang.NumberFormatException.class)
	public void testMain_10()
		throws Exception {
		String[] args = new String[] {null, "0", "0", "0", "0", "0", "0", "0", "a"};

		hw1_500LOCStart.main(args);

		// add additional test code here
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test(expected = java.lang.NumberFormatException.class)
	public void testMain_11()
		throws Exception {
		String[] args = new String[] {null, "0", "0", "0", "0", "0", "0", "0", "0", "a"};

		hw1_500LOCStart.main(args);

		// add additional test code here
	}

	/**
	 * Perform pre-test initialization.
	 *
	 * @throws Exception
	 *         if the initialization fails for some reason
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Before
	public void setUp()
		throws Exception {
		// add additional set up code here
	}

	/**
	 * Perform post-test clean-up.
	 *
	 * @throws Exception
	 *         if the clean-up fails for some reason
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@After
	public void tearDown()
		throws Exception {
		// Add additional tear down code here
	}

	/**
	 * Launch the test.
	 *
	 * @param args the command line arguments
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	public static void main(String[] args) {
		new org.junit.runner.JUnitCore().run(hw1_500LOCStartTest.class);
	}
}