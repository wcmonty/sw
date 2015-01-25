package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOC9Test</code> contains tests for the class <code>{@link hw1_500LOC9}</code>.
 *
 * @generatedBy CodePro at 3/28/14 11:01 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOC9Test {
	/**
	 * Run the hw1_500LOC9() constructor test.
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9_1()
		throws Exception {
		hw1_500LOC9 result = new hw1_500LOC9();
		assertNotNull(result);
		// add additional test code here
	}

	/**
	 * Run the float hw1_500LOC8method10(byte,hw1_500LOC13,int,double,hw1_500LOC18,byte,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC8method10_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		byte var0 = (byte) 1;
		hw1_500LOC13 var1 = new hw1_500LOC13();
		int var2 = 1;
		double var3 = 1.0;
		hw1_500LOC18 var4 = new hw1_500LOC18();
		byte var5 = (byte) 1;
		float var6 = 1.0f;

		float result = fixture.hw1_500LOC8method10(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the double hw1_500LOC8method11(int,char,long,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC8method11_1()
		throws Exception {
		int var0 = 1;
		char var1 = '';
		long var2 = 1L;
		char var3 = '';

		double result = hw1_500LOC9.hw1_500LOC8method11(var0, var1, var2, var3);

		// add additional test code here
		assertEquals(0.217470671970871, result, 0.1);
	}

	/**
	 * Run the String hw1_500LOC8method19(short,double,String,short,hw1_500LOC6,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC8method19_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		short var0 = (short) 1;
		double var1 = 1.0;
		String var2 = "";
		short var3 = (short) 1;
		hw1_500LOC6 var4 = new hw1_500LOC6();
		char var5 = '';

		String result = fixture.hw1_500LOC8method19(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertNotNull(result);
	}

	/**
	 * Run the Object hw1_500LOC8method2(long,String,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC8method2_1()
		throws Exception {
		long var0 = 1L;
		String var1 = "";
		String var2 = "";

		Object result = hw1_500LOC9.hw1_500LOC8method2(var0, var1, var2);

		// add additional test code here
		assertEquals(null, result);
	}

	/**
	 * Run the long hw1_500LOC8method20(float,long,byte,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC8method20_1()
		throws Exception {
		float var0 = 1.0f;
		long var1 = 1L;
		byte var2 = (byte) 1;
		short var3 = (short) 1;

		long result = hw1_500LOC9.hw1_500LOC8method20(var0, var1, var2, var3);

		// add additional test code here
		assertEquals(1L, result);
	}

	/**
	 * Run the char hw1_500LOC8method23(long,long,int,float,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC8method23_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		long var0 = 1L;
		long var1 = 1L;
		int var2 = 1;
		float var3 = 1.0f;
		byte var4 = (byte) 1;

		char result = fixture.hw1_500LOC8method23(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertEquals(' ', result);
	}

	/**
	 * Run the double hw1_500LOC8method27(char,byte,float,int,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC8method27_1()
		throws Exception {
		char var0 = '';
		byte var1 = (byte) 1;
		float var2 = 1.0f;
		int var3 = 1;
		short var4 = (short) 1;

		double result = hw1_500LOC9.hw1_500LOC8method27(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(0.5526854718859945, result, 0.1);
	}

	/**
	 * Run the int hw1_500LOC8method28(byte,float,hw1_500LOC12,int,short,byte,String,byte,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC8method28_1()
		throws Exception {
		byte var0 = (byte) 1;
		float var1 = 1.0f;
		hw1_500LOC12 var2 = new hw1_500LOC12();
		int var3 = 1;
		short var4 = (short) 1;
		byte var5 = (byte) 1;
		String var6 = "";
		byte var7 = (byte) 1;
		String var8 = "";

		int result = hw1_500LOC9.hw1_500LOC8method28(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the long hw1_500LOC8method32(long,short,byte,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC8method32_1()
		throws Exception {
		long var0 = 1L;
		short var1 = (short) 1;
		byte var2 = (byte) 1;
		int var3 = 1;

		long result = hw1_500LOC9.hw1_500LOC8method32(var0, var1, var2, var3);

		// add additional test code here
		assertEquals(1L, result);
	}

	/**
	 * Run the double hw1_500LOC8method8(double,byte,float,double,long,int,short,double,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC8method8_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		double var0 = 1.0;
		byte var1 = (byte) 1;
		float var2 = 1.0f;
		double var3 = 1.0;
		long var4 = 1L;
		int var5 = 1;
		short var6 = (short) 1;
		double var7 = 1.0;
		long var8 = 1L;

		double result = fixture.hw1_500LOC8method8(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the char hw1_500LOC9method0(hw1_500LOC3,float,hw1_500LOC1,hw1_500LOC17) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method0_1()
		throws Exception {
		hw1_500LOC3 var0 = new hw1_500LOC3();
		float var1 = 1.0f;
		hw1_500LOC1 var2 = new hw1_500LOC1();
		hw1_500LOC17 var3 = new hw1_500LOC17();

		char result = hw1_500LOC9.hw1_500LOC9method0(var0, var1, var2, var3);

		// add additional test code here
		assertEquals('s', result);
	}

	/**
	 * Run the float hw1_500LOC9method1(String,double,float,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method1_1()
		throws Exception {
		String var0 = "";
		double var1 = 1.0;
		float var2 = 1.0f;
		int var3 = 1;

		float result = hw1_500LOC9.hw1_500LOC9method1(var0, var1, var2, var3);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the Object hw1_500LOC9method10(double,long,int,String,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method10_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		double var0 = 1.0;
		long var1 = 1L;
		int var2 = 1;
		String var3 = "";
		short var4 = (short) 1;

		Object result = fixture.hw1_500LOC9method10(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertNotNull(result);
	}

	/**
	 * Run the short hw1_500LOC9method11(String,double,double,int,char,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method11_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		String var0 = "";
		double var1 = 1.0;
		double var2 = 1.0;
		int var3 = 1;
		char var4 = '';
		float var5 = 1.0f;

		short result = fixture.hw1_500LOC9method11(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertEquals((short) 0, result);
	}

	/**
	 * Run the float hw1_500LOC9method13(short,double,float,float,byte,char,hw1_500LOC17,hw1_500LOC30,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method13_1()
		throws Exception {
		short var0 = (short) 1;
		double var1 = 1.0;
		float var2 = 1.0f;
		float var3 = 1.0f;
		byte var4 = (byte) 1;
		char var5 = '';
		hw1_500LOC17 var6 = new hw1_500LOC17();
		hw1_500LOC30 var7 = new hw1_500LOC30();
		double var8 = 1.0;

		float result = hw1_500LOC9.hw1_500LOC9method13(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the Object hw1_500LOC9method14(int,long,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method14_1()
		throws Exception {
		int var0 = 1;
		long var1 = 1L;
		float var2 = 1.0f;

		Object result = hw1_500LOC9.hw1_500LOC9method14(var0, var1, var2);

		// add additional test code here
		assertEquals(null, result);
	}

	/**
	 * Run the String hw1_500LOC9method15(short,long,String,int,int,int,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method15_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		short var0 = (short) 1;
		long var1 = 1L;
		String var2 = "";
		int var3 = 1;
		int var4 = 1;
		int var5 = 1;
		long var6 = 1L;

		String result = fixture.hw1_500LOC9method15(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertNotNull(result);
	}

	/**
	 * Run the byte hw1_500LOC9method16(long,float,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method16_1()
		throws Exception {
		long var0 = 1L;
		float var1 = 1.0f;
		String var2 = "";

		byte result = hw1_500LOC9.hw1_500LOC9method16(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) 8, result);
	}

	/**
	 * Run the byte hw1_500LOC9method18(hw1_500LOC34,byte,long,float,float,double,char,hw1_500LOC28,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method18_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		hw1_500LOC34 var0 = new hw1_500LOC34();
		byte var1 = (byte) 1;
		long var2 = 1L;
		float var3 = 1.0f;
		float var4 = 1.0f;
		double var5 = 1.0;
		char var6 = '';
		hw1_500LOC28 var7 = new hw1_500LOC28();
		int var8 = 1;

		byte result = fixture.hw1_500LOC9method18(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the String hw1_500LOC9method19(float,byte,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method19_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		float var0 = 1.0f;
		byte var1 = (byte) 1;
		String var2 = "";

		String result = fixture.hw1_500LOC9method19(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertNotNull(result);
	}

	/**
	 * Run the byte hw1_500LOC9method2(hw1_500LOC17,String,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method2_1()
		throws Exception {
		hw1_500LOC17 var0 = new hw1_500LOC17();
		String var1 = "";
		String var2 = "";

		byte result = hw1_500LOC9.hw1_500LOC9method2(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) -99, result);
	}

	/**
	 * Run the Object hw1_500LOC9method20(char,float,float,float,char,String,int,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method20_1()
		throws Exception {
		char var0 = '';
		float var1 = 1.0f;
		float var2 = 1.0f;
		float var3 = 1.0f;
		char var4 = '';
		String var5 = "";
		int var6 = 1;
		short var7 = (short) 1;

		Object result = hw1_500LOC9.hw1_500LOC9method20(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(null, result);
	}

	/**
	 * Run the double hw1_500LOC9method22(double,byte,byte,float,float,char,hw1_500LOC12,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method22_1()
		throws Exception {
		double var0 = 1.0;
		byte var1 = (byte) 1;
		byte var2 = (byte) 1;
		float var3 = 1.0f;
		float var4 = 1.0f;
		char var5 = '';
		hw1_500LOC12 var6 = new hw1_500LOC12();
		double var7 = 1.0;

		double result = hw1_500LOC9.hw1_500LOC9method22(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the float hw1_500LOC9method23(hw1_500LOC32,float,int,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method23_1()
		throws Exception {
		hw1_500LOC32 var0 = new hw1_500LOC32();
		float var1 = 1.0f;
		int var2 = 1;
		int var3 = 1;

		float result = hw1_500LOC9.hw1_500LOC9method23(var0, var1, var2, var3);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the double hw1_500LOC9method24(char,char,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method24_1()
		throws Exception {
		char var0 = '';
		char var1 = '';
		double var2 = 1.0;

		double result = hw1_500LOC9.hw1_500LOC9method24(var0, var1, var2);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the String hw1_500LOC9method26(double,byte,long,long,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method26_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		double var0 = 1.0;
		byte var1 = (byte) 1;
		long var2 = 1L;
		long var3 = 1L;
		long var4 = 1L;

		String result = fixture.hw1_500LOC9method26(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertNotNull(result);
	}

	/**
	 * Run the float hw1_500LOC9method27(short,float,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method27_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		short var0 = (short) 1;
		float var1 = 1.0f;
		char var2 = '';

		float result = fixture.hw1_500LOC9method27(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the double hw1_500LOC9method29(String,String,hw1_500LOC18,String,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method29_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		String var0 = "";
		String var1 = "";
		hw1_500LOC18 var2 = new hw1_500LOC18();
		String var3 = "";
		String var4 = "";

		double result = fixture.hw1_500LOC9method29(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the int hw1_500LOC9method3(String,char,String,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method3_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		String var0 = "";
		char var1 = '';
		String var2 = "";
		char var3 = '';

		int result = fixture.hw1_500LOC9method3(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertEquals(0, result);
	}

	/**
	 * Run the Object hw1_500LOC9method30(float,short,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method30_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		float var0 = 1.0f;
		short var1 = (short) 1;
		byte var2 = (byte) 1;

		Object result = fixture.hw1_500LOC9method30(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertNotNull(result);
	}

	/**
	 * Run the long hw1_500LOC9method32(long,String,short,hw1_500LOC12,byte,long,hw1_500LOC32,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method32_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		long var0 = 1L;
		String var1 = "";
		short var2 = (short) 1;
		hw1_500LOC12 var3 = new hw1_500LOC12();
		byte var4 = (byte) 1;
		long var5 = 1L;
		hw1_500LOC32 var6 = new hw1_500LOC32();
		byte var7 = (byte) 1;

		long result = fixture.hw1_500LOC9method32(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertEquals(0L, result);
	}

	/**
	 * Run the int hw1_500LOC9method33(double,hw1_500LOC8,int,double,int,double,float,hw1_500LOC12,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method33_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		double var0 = 1.0;
		hw1_500LOC8 var1 = new hw1_500LOC8();
		int var2 = 1;
		double var3 = 1.0;
		int var4 = 1;
		double var5 = 1.0;
		float var6 = 1.0f;
		hw1_500LOC12 var7 = new hw1_500LOC12();
		String var8 = "";

		int result = fixture.hw1_500LOC9method33(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertEquals(0, result);
	}

	/**
	 * Run the double hw1_500LOC9method34(byte,hw1_500LOC13,float,hw1_500LOC23,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method34_1()
		throws Exception {
		byte var0 = (byte) 1;
		hw1_500LOC13 var1 = new hw1_500LOC13();
		float var2 = 1.0f;
		hw1_500LOC23 var3 = new hw1_500LOC23();
		short var4 = (short) 1;

		double result = hw1_500LOC9.hw1_500LOC9method34(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(0.520316869717476, result, 0.1);
	}

	/**
	 * Run the double hw1_500LOC9method7(String,hw1_500LOC23,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method7_1()
		throws Exception {
		hw1_500LOC9 fixture = new hw1_500LOC9();
		fixture.f1 = 1.0f;
		fixture.f0 = new hw1_500LOC33[] {};
		fixture.f1 = new double[] {};
		String var0 = "";
		hw1_500LOC23 var1 = new hw1_500LOC23();
		float var2 = 1.0f;

		double result = fixture.hw1_500LOC9method7(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set float field test.hw1_500LOC9.f1 to [D
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the double hw1_500LOC9method8(char,hw1_500LOC1,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC9method8_1()
		throws Exception {
		char var0 = '';
		hw1_500LOC1 var1 = new hw1_500LOC1();
		short var2 = (short) 1;

		double result = hw1_500LOC9.hw1_500LOC9method8(var0, var1, var2);

		// add additional test code here
		assertEquals(0.12208432959375515, result, 0.1);
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

		hw1_500LOC9.main(args);

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

		hw1_500LOC9.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

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
		new org.junit.runner.JUnitCore().run(hw1_500LOC9Test.class);
	}
}