package com.accenture.lab.carfast.test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_1000LOC33Test</code> contains tests for the class <code>{@link hw1_1000LOC33}</code>.
 *
 * @generatedBy CodePro at 3/28/14 10:52 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_1000LOC33Test {
	/**
	 * Run the hw1_1000LOC33() constructor test.
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33_1()
		throws Exception {
		hw1_1000LOC33 result = new hw1_1000LOC33();
		assertNotNull(result);
		// add additional test code here
	}

	/**
	 * Run the double hw1_1000LOC33method0(long,short,hw1_1000LOC3,float,int,double,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method0_1()
		throws Exception {
		long var0 = 1L;
		short var1 = (short) 1;
		hw1_1000LOC3 var2 = new hw1_1000LOC3();
		float var3 = 1.0f;
		int var4 = 1;
		double var5 = 1.0;
		byte var6 = (byte) 1;

		double result = hw1_1000LOC33.hw1_1000LOC33method0(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the short hw1_1000LOC33method1(char,double,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method1_1()
		throws Exception {
		char var0 = '';
		double var1 = 1.0;
		long var2 = 1L;

		short result = hw1_1000LOC33.hw1_1000LOC33method1(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 2784, result);
	}

	/**
	 * Run the char hw1_1000LOC33method10(hw1_1000LOC16,float,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method10_1()
		throws Exception {
		hw1_1000LOC33 fixture = new hw1_1000LOC33();
		fixture.f0 = "";
		fixture.f1 = new char[] {};
		hw1_1000LOC16 var0 = new hw1_1000LOC16();
		float var1 = 1.0f;
		char var2 = '';

		char result = fixture.hw1_1000LOC33method10(var0, var1, var2);

		// add additional test code here
		assertEquals('', result);
	}

	/**
	 * Run the long hw1_1000LOC33method11(hw1_1000LOC25,float,short,float,byte,float,float,char,hw1_1000LOC29) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method11_1()
		throws Exception {
		hw1_1000LOC25 var0 = new hw1_1000LOC25();
		float var1 = 1.0f;
		short var2 = (short) 1;
		float var3 = 1.0f;
		byte var4 = (byte) 1;
		float var5 = 1.0f;
		float var6 = 1.0f;
		char var7 = '';
		hw1_1000LOC29 var8 = new hw1_1000LOC29();

		long result = hw1_1000LOC33.hw1_1000LOC33method11(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals(18L, result);
	}

	/**
	 * Run the String hw1_1000LOC33method12(double,String,short,int,byte,hw1_1000LOC24,String,byte,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method12_1()
		throws Exception {
		double var0 = 1.0;
		String var1 = "";
		short var2 = (short) 1;
		int var3 = 1;
		byte var4 = (byte) 1;
		hw1_1000LOC24 var5 = new hw1_1000LOC24();
		String var6 = "";
		byte var7 = (byte) 1;
		byte var8 = (byte) 1;

		String result = hw1_1000LOC33.hw1_1000LOC33method12(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals("", result);
	}

	/**
	 * Run the byte hw1_1000LOC33method13(int,String,int,String,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method13_1()
		throws Exception {
		hw1_1000LOC33 fixture = new hw1_1000LOC33();
		fixture.f0 = "";
		fixture.f1 = new char[] {};
		int var0 = 1;
		String var1 = "";
		int var2 = 1;
		String var3 = "";
		char var4 = '';

		byte result = fixture.hw1_1000LOC33method13(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals((byte) -96, result);
	}

	/**
	 * Run the long hw1_1000LOC33method2(String,char,char,char,char,String,char,double,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method2_1()
		throws Exception {
		String var0 = "";
		char var1 = '';
		char var2 = '';
		char var3 = '';
		char var4 = '';
		String var5 = "";
		char var6 = '';
		double var7 = 1.0;
		double var8 = 1.0;

		long result = hw1_1000LOC33.hw1_1000LOC33method2(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals(18L, result);
	}

	/**
	 * Run the double hw1_1000LOC33method3(int,String,byte,String,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method3_1()
		throws Exception {
		hw1_1000LOC33 fixture = new hw1_1000LOC33();
		fixture.f0 = "";
		fixture.f1 = new char[] {};
		int var0 = 1;
		String var1 = "";
		byte var2 = (byte) 1;
		String var3 = "";
		int var4 = 1;

		double result = fixture.hw1_1000LOC33method3(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(0.44643745211202246, result, 0.1);
	}

	/**
	 * Run the int hw1_1000LOC33method4(double,String,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method4_1()
		throws Exception {
		hw1_1000LOC33 fixture = new hw1_1000LOC33();
		fixture.f0 = "";
		fixture.f1 = new char[] {};
		double var0 = 1.0;
		String var1 = "";
		int var2 = 1;

		int result = fixture.hw1_1000LOC33method4(var0, var1, var2);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the short hw1_1000LOC33method5(double,double,short,double,double,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method5_1()
		throws Exception {
		double var0 = 1.0;
		double var1 = 1.0;
		short var2 = (short) 1;
		double var3 = 1.0;
		double var4 = 1.0;
		int var5 = 1;

		short result = hw1_1000LOC33.hw1_1000LOC33method5(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the int hw1_1000LOC33method6(long,String,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method6_1()
		throws Exception {
		hw1_1000LOC33 fixture = new hw1_1000LOC33();
		fixture.f0 = "";
		fixture.f1 = new char[] {};
		long var0 = 1L;
		String var1 = "";
		short var2 = (short) 1;

		int result = fixture.hw1_1000LOC33method6(var0, var1, var2);

		// add additional test code here
		assertEquals(18, result);
	}

	/**
	 * Run the double hw1_1000LOC33method7(long,byte,hw1_1000LOC2,String,int,char,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method7_1()
		throws Exception {
		hw1_1000LOC33 fixture = new hw1_1000LOC33();
		fixture.f0 = "";
		fixture.f1 = new char[] {};
		long var0 = 1L;
		byte var1 = (byte) 1;
		hw1_1000LOC2 var2 = new hw1_1000LOC2();
		String var3 = "";
		int var4 = 1;
		char var5 = '';
		int var6 = 1;

		double result = fixture.hw1_1000LOC33method7(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals(0.7208523174518332, result, 0.1);
	}

	/**
	 * Run the short hw1_1000LOC33method8(char,char,long,byte,hw1_1000LOC2,double,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method8_1()
		throws Exception {
		hw1_1000LOC33 fixture = new hw1_1000LOC33();
		fixture.f0 = "";
		fixture.f1 = new char[] {};
		char var0 = '';
		char var1 = '';
		long var2 = 1L;
		byte var3 = (byte) 1;
		hw1_1000LOC2 var4 = new hw1_1000LOC2();
		double var5 = 1.0;
		long var6 = 1L;

		short result = fixture.hw1_1000LOC33method8(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals((short) 14687, result);
	}

	/**
	 * Run the byte hw1_1000LOC33method9(float,float,int,byte,float,float,double,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOC33method9_1()
		throws Exception {
		hw1_1000LOC33 fixture = new hw1_1000LOC33();
		fixture.f0 = "";
		fixture.f1 = new char[] {};
		float var0 = 1.0f;
		float var1 = 1.0f;
		int var2 = 1;
		byte var3 = (byte) 1;
		float var4 = 1.0f;
		float var5 = 1.0f;
		double var6 = 1.0;
		short var7 = (short) 1;

		byte result = fixture.hw1_1000LOC33method9(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals((byte) 1, result);
	}

	/**
	 * Run the byte hw1_1000LOCInterface9Method0(byte,byte,hw1_1000LOC18,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOCInterface9Method0_1()
		throws Exception {
		hw1_1000LOC33 fixture = new hw1_1000LOC33();
		fixture.f0 = "";
		fixture.f1 = new char[] {};
		byte var0 = (byte) 1;
		byte var1 = (byte) 1;
		hw1_1000LOC18 var2 = new hw1_1000LOC18();
		double var3 = 1.0;

		byte result = fixture.hw1_1000LOCInterface9Method0(var0, var1, var2, var3);

		// add additional test code here
		assertEquals((byte) 1, result);
	}

	/**
	 * Run the byte hw1_1000LOCInterface9Method1(char,byte,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOCInterface9Method1_1()
		throws Exception {
		hw1_1000LOC33 fixture = new hw1_1000LOC33();
		fixture.f0 = "";
		fixture.f1 = new char[] {};
		char var0 = '';
		byte var1 = (byte) 1;
		long var2 = 1L;

		byte result = fixture.hw1_1000LOCInterface9Method1(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) 1, result);
	}

	/**
	 * Run the long hw1_1000LOCInterface9Method2(long,char,long,short,float,byte,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testHw1_1000LOCInterface9Method2_1()
		throws Exception {
		hw1_1000LOC33 fixture = new hw1_1000LOC33();
		fixture.f0 = "";
		fixture.f1 = new char[] {};
		long var0 = 1L;
		char var1 = '';
		long var2 = 1L;
		short var3 = (short) 1;
		float var4 = 1.0f;
		byte var5 = (byte) 1;
		String var6 = "";

		long result = fixture.hw1_1000LOCInterface9Method2(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals(1L, result);
	}

	/**
	 * Run the void main(String[]) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	@Test
	public void testMain_1()
		throws Exception {
		String[] args = new String[] {};

		hw1_1000LOC33.main(args);

		// add additional test code here
	}

	/**
	 * Run the void singleEntry(int,int,int,int,int,int,int,int,int,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
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

		hw1_1000LOC33.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

		// add additional test code here
	}

	/**
	 * Perform pre-test initialization.
	 *
	 * @throws Exception
	 *         if the initialization fails for some reason
	 *
	 * @generatedBy CodePro at 3/28/14 10:52 PM
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
	 * @generatedBy CodePro at 3/28/14 10:52 PM
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
	 * @generatedBy CodePro at 3/28/14 10:52 PM
	 */
	public static void main(String[] args) {
		new org.junit.runner.JUnitCore().run(hw1_1000LOC33Test.class);
	}
}