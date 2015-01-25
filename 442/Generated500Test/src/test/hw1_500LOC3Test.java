package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOC3Test</code> contains tests for the class <code>{@link hw1_500LOC3}</code>.
 *
 * @generatedBy CodePro at 3/28/14 11:01 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOC3Test {
	/**
	 * Run the hw1_500LOC3() constructor test.
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3_1()
		throws Exception {
		hw1_500LOC3 result = new hw1_500LOC3();
		assertNotNull(result);
		// add additional test code here
	}

	/**
	 * Run the short hw1_500LOC3method0(short,long,hw1_500LOC0,String,char,float,char,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method0_1()
		throws Exception {
		short var0 = (short) 1;
		long var1 = 1L;
		hw1_500LOC0 var2 = new hw1_500LOC0();
		String var3 = "";
		char var4 = '';
		float var5 = 1.0f;
		char var6 = '';
		float var7 = 1.0f;

		short result = hw1_500LOC3.hw1_500LOC3method0(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the float hw1_500LOC3method1(short,String,double,String,byte,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method1_1()
		throws Exception {
		short var0 = (short) 1;
		String var1 = "";
		double var2 = 1.0;
		String var3 = "";
		byte var4 = (byte) 1;
		double var5 = 1.0;

		float result = hw1_500LOC3.hw1_500LOC3method1(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals(0.3891617f, result, 0.1f);
	}

	/**
	 * Run the float hw1_500LOC3method10(byte,hw1_500LOC31,float,int,String,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method10_1()
		throws Exception {
		byte var0 = (byte) 1;
		hw1_500LOC31 var1 = new hw1_500LOC31();
		float var2 = 1.0f;
		int var3 = 1;
		String var4 = "";
		short var5 = (short) 1;

		float result = hw1_500LOC3.hw1_500LOC3method10(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the float hw1_500LOC3method11(short,long,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method11_1()
		throws Exception {
		hw1_500LOC3 fixture = new hw1_500LOC3();
		short var0 = (short) 1;
		long var1 = 1L;
		long var2 = 1L;

		float result = fixture.hw1_500LOC3method11(var0, var1, var2);

		// add additional test code here
		assertEquals(0.40416223f, result, 0.1f);
	}

	/**
	 * Run the String hw1_500LOC3method12(short,double,double,hw1_500LOC16) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method12_1()
		throws Exception {
		short var0 = (short) 1;
		double var1 = 1.0;
		double var2 = 1.0;
		hw1_500LOC16 var3 = new hw1_500LOC16();

		String result = hw1_500LOC3.hw1_500LOC3method12(var0, var1, var2, var3);

		// add additional test code here
		assertEquals("mkwazmeqniaearvyefdcbtwecdlmoelzfmafimuxrbtxdgjqeophbatoqsuloqrbhlkgdcvsttvgumbzapbtrlmlbzfpzmqcqqp", result);
	}

	/**
	 * Run the String hw1_500LOC3method13(byte,long,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method13_1()
		throws Exception {
		byte var0 = (byte) 1;
		long var1 = 1L;
		String var2 = "";

		String result = hw1_500LOC3.hw1_500LOC3method13(var0, var1, var2);

		// add additional test code here
		assertEquals("", result);
	}

	/**
	 * Run the char hw1_500LOC3method14(long,long,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method14_1()
		throws Exception {
		long var0 = 1L;
		long var1 = 1L;
		short var2 = (short) 1;

		char result = hw1_500LOC3.hw1_500LOC3method14(var0, var1, var2);

		// add additional test code here
		assertEquals('m', result);
	}

	/**
	 * Run the int hw1_500LOC3method15(char,byte,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method15_1()
		throws Exception {
		char var0 = '';
		byte var1 = (byte) 1;
		byte var2 = (byte) 1;

		int result = hw1_500LOC3.hw1_500LOC3method15(var0, var1, var2);

		// add additional test code here
		assertEquals(96, result);
	}

	/**
	 * Run the long hw1_500LOC3method2(int,short,hw1_500LOC32,hw1_500LOC17,byte,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method2_1()
		throws Exception {
		hw1_500LOC3 fixture = new hw1_500LOC3();
		int var0 = 1;
		short var1 = (short) 1;
		hw1_500LOC32 var2 = new hw1_500LOC32();
		hw1_500LOC17 var3 = new hw1_500LOC17();
		byte var4 = (byte) 1;
		char var5 = '';

		long result = fixture.hw1_500LOC3method2(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals(19L, result);
	}

	/**
	 * Run the double hw1_500LOC3method3(double,short,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method3_1()
		throws Exception {
		double var0 = 1.0;
		short var1 = (short) 1;
		String var2 = "";

		double result = hw1_500LOC3.hw1_500LOC3method3(var0, var1, var2);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the Object hw1_500LOC3method4(char,float,double,int,hw1_500LOC22,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method4_1()
		throws Exception {
		hw1_500LOC3 fixture = new hw1_500LOC3();
		char var0 = '';
		float var1 = 1.0f;
		double var2 = 1.0;
		int var3 = 1;
		hw1_500LOC22 var4 = new hw1_500LOC22();
		float var5 = 1.0f;

		Object result = fixture.hw1_500LOC3method4(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the float hw1_500LOC3method5(long,long,float,long,short,String,char,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method5_1()
		throws Exception {
		long var0 = 1L;
		long var1 = 1L;
		float var2 = 1.0f;
		long var3 = 1L;
		short var4 = (short) 1;
		String var5 = "";
		char var6 = '';
		short var7 = (short) 1;

		float result = hw1_500LOC3.hw1_500LOC3method5(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the byte hw1_500LOC3method6(char,long,double,long,String,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method6_1()
		throws Exception {
		char var0 = '';
		long var1 = 1L;
		double var2 = 1.0;
		long var3 = 1L;
		String var4 = "";
		int var5 = 1;

		byte result = hw1_500LOC3.hw1_500LOC3method6(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals((byte) -69, result);
	}

	/**
	 * Run the long hw1_500LOC3method7(long,byte,int,long,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method7_1()
		throws Exception {
		hw1_500LOC3 fixture = new hw1_500LOC3();
		long var0 = 1L;
		byte var1 = (byte) 1;
		int var2 = 1;
		long var3 = 1L;
		int var4 = 1;

		long result = fixture.hw1_500LOC3method7(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(1L, result);
	}

	/**
	 * Run the String hw1_500LOC3method8(String,char,hw1_500LOC18,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method8_1()
		throws Exception {
		String var0 = "";
		char var1 = '';
		hw1_500LOC18 var2 = new hw1_500LOC18();
		String var3 = "";

		String result = hw1_500LOC3.hw1_500LOC3method8(var0, var1, var2, var3);

		// add additional test code here
		assertEquals("", result);
	}

	/**
	 * Run the byte hw1_500LOC3method9(short,String,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method9_1()
		throws Exception {
		hw1_500LOC3 fixture = new hw1_500LOC3();
		short var0 = (short) 1;
		String var1 = "";
		double var2 = 1.0;

		byte result = fixture.hw1_500LOC3method9(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) -52, result);
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testMain_1()
		throws Exception {
		String[] args = new String[] {};

		hw1_500LOC3.main(args);

		// add additional test code here
	}

	/**
	 * Run the void singleEntry(int,int,int,int,int,int,int,int,int,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
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

		hw1_500LOC3.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

		// add additional test code here
	}

	/**
	 * Perform pre-test initialization.
	 *
	 * @throws Exception
	 *         if the initialization fails for some reason
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
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
	 * @generatedBy CodePro at 3/28/14 11:01 PM
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
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	public static void main(String[] args) {
		new org.junit.runner.JUnitCore().run(hw1_500LOC3Test.class);
	}
}