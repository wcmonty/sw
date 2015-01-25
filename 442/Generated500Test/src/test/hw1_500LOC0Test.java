package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOC0Test</code> contains tests for the class <code>{@link hw1_500LOC0}</code>.
 *
 * @generatedBy CodePro at 3/28/14 11:00 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOC0Test {
	/**
	 * Run the hw1_500LOC0() constructor test.
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC0_1()
		throws Exception {
		hw1_500LOC0 result = new hw1_500LOC0();
		assertNotNull(result);
		// add additional test code here
	}

	/**
	 * Run the byte hw1_500LOC0method0(short,float,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC0method0_1()
		throws Exception {
		hw1_500LOC0 fixture = new hw1_500LOC0();
		fixture.f0 = 1.0f;
		fixture.f0 = new char[] {};
		fixture.f1 = '';
		fixture.f2 = (byte) 1;
		short var0 = (short) 1;
		float var1 = 1.0f;
		String var2 = "";

		byte result = fixture.hw1_500LOC0method0(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [F field test.hw1_500LOC0.f0 to java.lang.Float
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the char hw1_500LOC0method10(char,String,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC0method10_1()
		throws Exception {
		hw1_500LOC0 fixture = new hw1_500LOC0();
		fixture.f0 = 1.0f;
		fixture.f0 = new char[] {};
		fixture.f1 = '';
		fixture.f2 = (byte) 1;
		char var0 = '';
		String var1 = "";
		long var2 = 1L;

		char result = fixture.hw1_500LOC0method10(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [F field test.hw1_500LOC0.f0 to java.lang.Float
		assertEquals(' ', result);
	}

	/**
	 * Run the String hw1_500LOC0method11(double,double,int,int,int,hw1_500LOC26) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC0method11_1()
		throws Exception {
		hw1_500LOC0 fixture = new hw1_500LOC0();
		fixture.f0 = 1.0f;
		fixture.f0 = new char[] {};
		fixture.f1 = '';
		fixture.f2 = (byte) 1;
		double var0 = 1.0;
		double var1 = 1.0;
		int var2 = 1;
		int var3 = 1;
		int var4 = 1;
		hw1_500LOC26 var5 = new hw1_500LOC26();

		String result = fixture.hw1_500LOC0method11(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [F field test.hw1_500LOC0.f0 to java.lang.Float
		assertNotNull(result);
	}

	/**
	 * Run the double hw1_500LOC0method12(char,short,String,char,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC0method12_1()
		throws Exception {
		char var0 = '';
		short var1 = (short) 1;
		String var2 = "";
		char var3 = '';
		double var4 = 1.0;

		double result = hw1_500LOC0.hw1_500LOC0method12(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the double hw1_500LOC0method13(float,float,short,char,long,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC0method13_1()
		throws Exception {
		float var0 = 1.0f;
		float var1 = 1.0f;
		short var2 = (short) 1;
		char var3 = '';
		long var4 = 1L;
		double var5 = 1.0;

		double result = hw1_500LOC0.hw1_500LOC0method13(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the double hw1_500LOC0method15(int,char,hw1_500LOC25,int,byte,hw1_500LOC11,hw1_500LOC10,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC0method15_1()
		throws Exception {
		hw1_500LOC0 fixture = new hw1_500LOC0();
		fixture.f0 = 1.0f;
		fixture.f0 = new char[] {};
		fixture.f1 = '';
		fixture.f2 = (byte) 1;
		int var0 = 1;
		char var1 = '';
		hw1_500LOC25 var2 = new hw1_500LOC25();
		int var3 = 1;
		byte var4 = (byte) 1;
		hw1_500LOC11 var5 = new hw1_500LOC11();
		hw1_500LOC10 var6 = new hw1_500LOC10();
		int var7 = 1;

		double result = fixture.hw1_500LOC0method15(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [F field test.hw1_500LOC0.f0 to java.lang.Float
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the char hw1_500LOC0method9(hw1_500LOC17,byte,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC0method9_1()
		throws Exception {
		hw1_500LOC0 fixture = new hw1_500LOC0();
		fixture.f0 = 1.0f;
		fixture.f0 = new char[] {};
		fixture.f1 = '';
		fixture.f2 = (byte) 1;
		hw1_500LOC17 var0 = new hw1_500LOC17();
		byte var1 = (byte) 1;
		float var2 = 1.0f;

		char result = fixture.hw1_500LOC0method9(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [F field test.hw1_500LOC0.f0 to java.lang.Float
		assertEquals(' ', result);
	}

	/**
	 * Run the float hw1_500LOC10method22(byte,short,short,double,byte,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC10method22_1()
		throws Exception {
		hw1_500LOC0 fixture = new hw1_500LOC0();
		fixture.f0 = 1.0f;
		fixture.f0 = new char[] {};
		fixture.f1 = '';
		fixture.f2 = (byte) 1;
		byte var0 = (byte) 1;
		short var1 = (short) 1;
		short var2 = (short) 1;
		double var3 = 1.0;
		byte var4 = (byte) 1;
		int var5 = 1;

		float result = fixture.hw1_500LOC10method22(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [F field test.hw1_500LOC0.f0 to java.lang.Float
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the int hw1_500LOC10method26(String,int,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC10method26_1()
		throws Exception {
		String var0 = "";
		int var1 = 1;
		String var2 = "";

		int result = hw1_500LOC0.hw1_500LOC10method26(var0, var1, var2);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the Object hw1_500LOC10method27(double,float,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC10method27_1()
		throws Exception {
		double var0 = 1.0;
		float var1 = 1.0f;
		char var2 = '';

		Object result = hw1_500LOC0.hw1_500LOC10method27(var0, var1, var2);

		// add additional test code here
		assertEquals(null, result);
	}

	/**
	 * Run the int hw1_500LOC10method3(int,short,long,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC10method3_1()
		throws Exception {
		int var0 = 1;
		short var1 = (short) 1;
		long var2 = 1L;
		int var3 = 1;

		int result = hw1_500LOC0.hw1_500LOC10method3(var0, var1, var2, var3);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the String hw1_500LOC10method31(long,long,float,short,byte,double,float,String,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC10method31_1()
		throws Exception {
		hw1_500LOC0 fixture = new hw1_500LOC0();
		fixture.f0 = 1.0f;
		fixture.f0 = new char[] {};
		fixture.f1 = '';
		fixture.f2 = (byte) 1;
		long var0 = 1L;
		long var1 = 1L;
		float var2 = 1.0f;
		short var3 = (short) 1;
		byte var4 = (byte) 1;
		double var5 = 1.0;
		float var6 = 1.0f;
		String var7 = "";
		double var8 = 1.0;

		String result = fixture.hw1_500LOC10method31(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [F field test.hw1_500LOC0.f0 to java.lang.Float
		assertNotNull(result);
	}

	/**
	 * Run the short hw1_500LOC1method0(short,hw1_500LOC7,double,long,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC1method0_1()
		throws Exception {
		short var0 = (short) 1;
		hw1_500LOC7 var1 = new hw1_500LOC7();
		double var2 = 1.0;
		long var3 = 1L;
		double var4 = 1.0;

		short result = hw1_500LOC0.hw1_500LOC1method0(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the long hw1_500LOC1method10(char,long,char,char,int,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC1method10_1()
		throws Exception {
		hw1_500LOC0 fixture = new hw1_500LOC0();
		fixture.f0 = 1.0f;
		fixture.f0 = new char[] {};
		fixture.f1 = '';
		fixture.f2 = (byte) 1;
		char var0 = '';
		long var1 = 1L;
		char var2 = '';
		char var3 = '';
		int var4 = 1;
		byte var5 = (byte) 1;

		long result = fixture.hw1_500LOC1method10(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [F field test.hw1_500LOC0.f0 to java.lang.Float
		assertEquals(0L, result);
	}

	/**
	 * Run the Object hw1_500LOC1method12(short,char,char,String,int,String,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC1method12_1()
		throws Exception {
		hw1_500LOC0 fixture = new hw1_500LOC0();
		fixture.f0 = 1.0f;
		fixture.f0 = new char[] {};
		fixture.f1 = '';
		fixture.f2 = (byte) 1;
		short var0 = (short) 1;
		char var1 = '';
		char var2 = '';
		String var3 = "";
		int var4 = 1;
		String var5 = "";
		short var6 = (short) 1;

		Object result = fixture.hw1_500LOC1method12(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [F field test.hw1_500LOC0.f0 to java.lang.Float
		assertNotNull(result);
	}

	/**
	 * Run the short hw1_500LOC1method15(char,double,short,int,int,short,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC1method15_1()
		throws Exception {
		hw1_500LOC0 fixture = new hw1_500LOC0();
		fixture.f0 = 1.0f;
		fixture.f0 = new char[] {};
		fixture.f1 = '';
		fixture.f2 = (byte) 1;
		char var0 = '';
		double var1 = 1.0;
		short var2 = (short) 1;
		int var3 = 1;
		int var4 = 1;
		short var5 = (short) 1;
		String var6 = "";

		short result = fixture.hw1_500LOC1method15(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [F field test.hw1_500LOC0.f0 to java.lang.Float
		assertEquals((short) 0, result);
	}

	/**
	 * Run the short hw1_500LOCInterface6Method0(hw1_500LOC17,float,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOCInterface6Method0_1()
		throws Exception {
		hw1_500LOC0 fixture = new hw1_500LOC0();
		fixture.f0 = 1.0f;
		fixture.f0 = new char[] {};
		fixture.f1 = '';
		fixture.f2 = (byte) 1;
		hw1_500LOC17 var0 = new hw1_500LOC17();
		float var1 = 1.0f;
		long var2 = 1L;

		short result = fixture.hw1_500LOCInterface6Method0(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [F field test.hw1_500LOC0.f0 to java.lang.Float
		assertEquals((short) 0, result);
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testMain_1()
		throws Exception {
		String[] args = new String[] {};

		hw1_500LOC0.main(args);

		// add additional test code here
	}

	/**
	 * Run the void singleEntry(int,int,int,int,int,int,int,int,int,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testSingleEntry_1()
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

		hw1_500LOC0.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

		// add additional test code here
	}

	/**
	 * Perform pre-test initialization.
	 *
	 * @throws Exception
	 *         if the initialization fails for some reason
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
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
	 * @generatedBy CodePro at 3/28/14 11:00 PM
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
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	public static void main(String[] args) {
		new org.junit.runner.JUnitCore().run(hw1_500LOC0Test.class);
	}
}