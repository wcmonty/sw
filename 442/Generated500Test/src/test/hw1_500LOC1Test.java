package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOC1Test</code> contains tests for the class <code>{@link hw1_500LOC1}</code>.
 *
 * @generatedBy CodePro at 3/28/14 11:00 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOC1Test {
	/**
	 * Run the hw1_500LOC1() constructor test.
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC1_1()
		throws Exception {
		hw1_500LOC1 result = new hw1_500LOC1();
		assertNotNull(result);
		// add additional test code here
	}

	/**
	 * Run the Object hw1_500LOC10method14(hw1_500LOC30,hw1_500LOC27,long,double,long,String,double,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC10method14_1()
		throws Exception {
		hw1_500LOC30 var0 = new hw1_500LOC30();
		hw1_500LOC27 var1 = new hw1_500LOC27();
		long var2 = 1L;
		double var3 = 1.0;
		long var4 = 1L;
		String var5 = "";
		double var6 = 1.0;
		float var7 = 1.0f;

		Object result = hw1_500LOC1.hw1_500LOC10method14(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertNotNull(result);
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
		hw1_500LOC1 fixture = new hw1_500LOC1();
		fixture.f0 = new char[] {};
		fixture.f2 = (byte) 1;
		fixture.f1 = '';
		fixture.f0 = 1.0f;
		byte var0 = (byte) 1;
		short var1 = (short) 1;
		short var2 = (short) 1;
		double var3 = 1.0;
		byte var4 = (byte) 1;
		int var5 = 1;

		float result = fixture.hw1_500LOC10method22(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC1.f0 to [C
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the byte hw1_500LOC10method23(hw1_500LOC8,hw1_500LOC5,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC10method23_1()
		throws Exception {
		hw1_500LOC8 var0 = new hw1_500LOC8();
		hw1_500LOC5 var1 = new hw1_500LOC5();
		char var2 = '';

		byte result = hw1_500LOC1.hw1_500LOC10method23(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) -111, result);
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

		int result = hw1_500LOC1.hw1_500LOC10method26(var0, var1, var2);

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

		Object result = hw1_500LOC1.hw1_500LOC10method27(var0, var1, var2);

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

		int result = hw1_500LOC1.hw1_500LOC10method3(var0, var1, var2, var3);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the long hw1_500LOC10method30(byte,short,int,hw1_500LOC27) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC10method30_1()
		throws Exception {
		hw1_500LOC1 fixture = new hw1_500LOC1();
		fixture.f0 = new char[] {};
		fixture.f2 = (byte) 1;
		fixture.f1 = '';
		fixture.f0 = 1.0f;
		byte var0 = (byte) 1;
		short var1 = (short) 1;
		int var2 = 1;
		hw1_500LOC27 var3 = new hw1_500LOC27();

		long result = fixture.hw1_500LOC10method30(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC1.f0 to [C
		assertEquals(0L, result);
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
		hw1_500LOC1 fixture = new hw1_500LOC1();
		fixture.f0 = new char[] {};
		fixture.f2 = (byte) 1;
		fixture.f1 = '';
		fixture.f0 = 1.0f;
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
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC1.f0 to [C
		assertNotNull(result);
	}

	/**
	 * Run the long hw1_500LOC10method7(char,String,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC10method7_1()
		throws Exception {
		hw1_500LOC1 fixture = new hw1_500LOC1();
		fixture.f0 = new char[] {};
		fixture.f2 = (byte) 1;
		fixture.f1 = '';
		fixture.f0 = 1.0f;
		char var0 = '';
		String var1 = "";
		short var2 = (short) 1;

		long result = fixture.hw1_500LOC10method7(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC1.f0 to [C
		assertEquals(0L, result);
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

		short result = hw1_500LOC1.hw1_500LOC1method0(var0, var1, var2, var3, var4);

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
		hw1_500LOC1 fixture = new hw1_500LOC1();
		fixture.f0 = new char[] {};
		fixture.f2 = (byte) 1;
		fixture.f1 = '';
		fixture.f0 = 1.0f;
		char var0 = '';
		long var1 = 1L;
		char var2 = '';
		char var3 = '';
		int var4 = 1;
		byte var5 = (byte) 1;

		long result = fixture.hw1_500LOC1method10(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC1.f0 to [C
		assertEquals(0L, result);
	}

	/**
	 * Run the char hw1_500LOC1method11(short,long,hw1_500LOC5,float,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC1method11_1()
		throws Exception {
		hw1_500LOC1 fixture = new hw1_500LOC1();
		fixture.f0 = new char[] {};
		fixture.f2 = (byte) 1;
		fixture.f1 = '';
		fixture.f0 = 1.0f;
		short var0 = (short) 1;
		long var1 = 1L;
		hw1_500LOC5 var2 = new hw1_500LOC5();
		float var3 = 1.0f;
		float var4 = 1.0f;

		char result = fixture.hw1_500LOC1method11(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC1.f0 to [C
		assertEquals(' ', result);
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
		hw1_500LOC1 fixture = new hw1_500LOC1();
		fixture.f0 = new char[] {};
		fixture.f2 = (byte) 1;
		fixture.f1 = '';
		fixture.f0 = 1.0f;
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
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC1.f0 to [C
		assertNotNull(result);
	}

	/**
	 * Run the double hw1_500LOC1method13(double,hw1_500LOC18,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC1method13_1()
		throws Exception {
		double var0 = 1.0;
		hw1_500LOC18 var1 = new hw1_500LOC18();
		String var2 = "";

		double result = hw1_500LOC1.hw1_500LOC1method13(var0, var1, var2);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
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
		hw1_500LOC1 fixture = new hw1_500LOC1();
		fixture.f0 = new char[] {};
		fixture.f2 = (byte) 1;
		fixture.f1 = '';
		fixture.f0 = 1.0f;
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
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC1.f0 to [C
		assertEquals((short) 0, result);
	}

	/**
	 * Run the int hw1_500LOC1method9(hw1_500LOC31,char,double,int,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC1method9_1()
		throws Exception {
		hw1_500LOC31 var0 = new hw1_500LOC31();
		char var1 = '';
		double var2 = 1.0;
		int var3 = 1;
		char var4 = '';

		int result = hw1_500LOC1.hw1_500LOC1method9(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(1, result);
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

		hw1_500LOC1.main(args);

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

		hw1_500LOC1.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

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
		new org.junit.runner.JUnitCore().run(hw1_500LOC1Test.class);
	}
}