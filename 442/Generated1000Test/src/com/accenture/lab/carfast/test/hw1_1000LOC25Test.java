package com.accenture.lab.carfast.test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_1000LOC25Test</code> contains tests for the class <code>{@link hw1_1000LOC25}</code>.
 *
 * @generatedBy CodePro at 3/28/14 10:53 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_1000LOC25Test {
	/**
	 * Run the hw1_1000LOC25() constructor test.
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC25_1()
		throws Exception {
		hw1_1000LOC25 result = new hw1_1000LOC25();
		assertNotNull(result);
		// add additional test code here
	}

	/**
	 * Run the float hw1_1000LOC25method1(hw1_1000LOC17,short,char,int,short,long,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC25method1_1()
		throws Exception {
		hw1_1000LOC17 var0 = new hw1_1000LOC17();
		short var1 = (short) 1;
		char var2 = '';
		int var3 = 1;
		short var4 = (short) 1;
		long var5 = 1L;
		int var6 = 1;

		float result = hw1_1000LOC25.hw1_1000LOC25method1(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals(0.057195306f, result, 0.1f);
	}

	/**
	 * Run the char hw1_1000LOC25method12(float,char,float,String,double,hw1_1000LOC7,float,String,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC25method12_1()
		throws Exception {
		float var0 = 1.0f;
		char var1 = '';
		float var2 = 1.0f;
		String var3 = "";
		double var4 = 1.0;
		hw1_1000LOC7 var5 = new hw1_1000LOC7();
		float var6 = 1.0f;
		String var7 = "";
		short var8 = (short) 1;

		char result = hw1_1000LOC25.hw1_1000LOC25method12(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals('', result);
	}

	/**
	 * Run the Object hw1_1000LOC25method13(double,long,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC25method13_1()
		throws Exception {
		double var0 = 1.0;
		long var1 = 1L;
		char var2 = '';

		Object result = hw1_1000LOC25.hw1_1000LOC25method13(var0, var1, var2);

		// add additional test code here
		assertEquals(null, result);
	}

	/**
	 * Run the short hw1_1000LOC25method2(int,char,String,short,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC25method2_1()
		throws Exception {
		int var0 = 1;
		char var1 = '';
		String var2 = "";
		short var3 = (short) 1;
		char var4 = '';

		short result = hw1_1000LOC25.hw1_1000LOC25method2(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the String hw1_1000LOC25method3(int,float,short,byte,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC25method3_1()
		throws Exception {
		int var0 = 1;
		float var1 = 1.0f;
		short var2 = (short) 1;
		byte var3 = (byte) 1;
		String var4 = "";

		String result = hw1_1000LOC25.hw1_1000LOC25method3(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals("", result);
	}

	/**
	 * Run the byte hw1_1000LOC25method5(String,byte,char,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC25method5_1()
		throws Exception {
		hw1_1000LOC25 fixture = new hw1_1000LOC25();
		fixture.f3 = new int[] {};
		fixture.f1 = (byte) 1;
		String var0 = "";
		byte var1 = (byte) 1;
		char var2 = '';
		float var3 = 1.0f;

		byte result = fixture.hw1_1000LOC25method5(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [Ljava.lang.String; field com.accenture.lab.carfast.test.hw1_1000LOC25.f1 to java.lang.Byte
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the int hw1_1000LOC25method6(float,char,long,hw1_1000LOC16,short,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC25method6_1()
		throws Exception {
		hw1_1000LOC25 fixture = new hw1_1000LOC25();
		fixture.f3 = new int[] {};
		fixture.f1 = (byte) 1;
		float var0 = 1.0f;
		char var1 = '';
		long var2 = 1L;
		hw1_1000LOC16 var3 = new hw1_1000LOC16();
		short var4 = (short) 1;
		float var5 = 1.0f;

		int result = fixture.hw1_1000LOC25method6(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [Ljava.lang.String; field com.accenture.lab.carfast.test.hw1_1000LOC25.f1 to java.lang.Byte
		assertEquals(0, result);
	}

	/**
	 * Run the char hw1_1000LOC25method7(float,char,hw1_1000LOC19,int,short,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC25method7_1()
		throws Exception {
		float var0 = 1.0f;
		char var1 = '';
		hw1_1000LOC19 var2 = new hw1_1000LOC19();
		int var3 = 1;
		short var4 = (short) 1;
		long var5 = 1L;

		char result = hw1_1000LOC25.hw1_1000LOC25method7(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals('', result);
	}

	/**
	 * Run the char hw1_1000LOC25method8(short,int,String,byte,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC25method8_1()
		throws Exception {
		hw1_1000LOC25 fixture = new hw1_1000LOC25();
		fixture.f3 = new int[] {};
		fixture.f1 = (byte) 1;
		short var0 = (short) 1;
		int var1 = 1;
		String var2 = "";
		byte var3 = (byte) 1;
		int var4 = 1;

		char result = fixture.hw1_1000LOC25method8(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [Ljava.lang.String; field com.accenture.lab.carfast.test.hw1_1000LOC25.f1 to java.lang.Byte
		assertEquals(' ', result);
	}

	/**
	 * Run the int hw1_1000LOC25method9(double,hw1_1000LOC30,double,char,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC25method9_1()
		throws Exception {
		hw1_1000LOC25 fixture = new hw1_1000LOC25();
		fixture.f3 = new int[] {};
		fixture.f1 = (byte) 1;
		double var0 = 1.0;
		hw1_1000LOC30 var1 = new hw1_1000LOC30();
		double var2 = 1.0;
		char var3 = '';
		float var4 = 1.0f;

		int result = fixture.hw1_1000LOC25method9(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [Ljava.lang.String; field com.accenture.lab.carfast.test.hw1_1000LOC25.f1 to java.lang.Byte
		assertEquals(0, result);
	}

	/**
	 * Run the int hw1_1000LOC7method0(byte,double,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC7method0_1()
		throws Exception {
		hw1_1000LOC25 fixture = new hw1_1000LOC25();
		fixture.f3 = new int[] {};
		fixture.f1 = (byte) 1;
		byte var0 = (byte) 1;
		double var1 = 1.0;
		int var2 = 1;

		int result = fixture.hw1_1000LOC7method0(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [Ljava.lang.String; field com.accenture.lab.carfast.test.hw1_1000LOC25.f1 to java.lang.Byte
		assertEquals(0, result);
	}

	/**
	 * Run the int hw1_1000LOC7method3(char,char,float,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC7method3_1()
		throws Exception {
		hw1_1000LOC25 fixture = new hw1_1000LOC25();
		fixture.f3 = new int[] {};
		fixture.f1 = (byte) 1;
		char var0 = '';
		char var1 = '';
		float var2 = 1.0f;
		int var3 = 1;

		int result = fixture.hw1_1000LOC7method3(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [Ljava.lang.String; field com.accenture.lab.carfast.test.hw1_1000LOC25.f1 to java.lang.Byte
		assertEquals(0, result);
	}

	/**
	 * Run the long hw1_1000LOC7method4(byte,String,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOC7method4_1()
		throws Exception {
		byte var0 = (byte) 1;
		String var1 = "";
		int var2 = 1;

		long result = hw1_1000LOC25.hw1_1000LOC7method4(var0, var1, var2);

		// add additional test code here
		assertEquals(89L, result);
	}

	/**
	 * Run the byte hw1_1000LOCInterface2Method0(char,hw1_1000LOC12,byte,double,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOCInterface2Method0_1()
		throws Exception {
		hw1_1000LOC25 fixture = new hw1_1000LOC25();
		fixture.f3 = new int[] {};
		fixture.f1 = (byte) 1;
		char var0 = '';
		hw1_1000LOC12 var1 = new hw1_1000LOC12();
		byte var2 = (byte) 1;
		double var3 = 1.0;
		String var4 = "";

		byte result = fixture.hw1_1000LOCInterface2Method0(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [Ljava.lang.String; field com.accenture.lab.carfast.test.hw1_1000LOC25.f1 to java.lang.Byte
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the byte hw1_1000LOCInterface9Method0(byte,byte,hw1_1000LOC18,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testHw1_1000LOCInterface9Method0_1()
		throws Exception {
		hw1_1000LOC25 fixture = new hw1_1000LOC25();
		fixture.f3 = new int[] {};
		fixture.f1 = (byte) 1;
		byte var0 = (byte) 1;
		byte var1 = (byte) 1;
		hw1_1000LOC18 var2 = new hw1_1000LOC18();
		double var3 = 1.0;

		byte result = fixture.hw1_1000LOCInterface9Method0(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [Ljava.lang.String; field com.accenture.lab.carfast.test.hw1_1000LOC25.f1 to java.lang.Byte
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	@Test
	public void testMain_1()
		throws Exception {
		String[] args = new String[] {};

		hw1_1000LOC25.main(args);

		// add additional test code here
	}

	/**
	 * Run the void singleEntry(int,int,int,int,int,int,int,int,int,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
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

		hw1_1000LOC25.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

		// add additional test code here
	}

	/**
	 * Perform pre-test initialization.
	 *
	 * @throws Exception
	 *         if the initialization fails for some reason
	 *
	 * @generatedBy CodePro at 3/28/14 10:53 PM
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
	 * @generatedBy CodePro at 3/28/14 10:53 PM
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
	 * @generatedBy CodePro at 3/28/14 10:53 PM
	 */
	public static void main(String[] args) {
		new org.junit.runner.JUnitCore().run(hw1_1000LOC25Test.class);
	}
}