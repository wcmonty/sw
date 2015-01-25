package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOC25Test</code> contains tests for the class <code>{@link hw1_500LOC25}</code>.
 *
 * @generatedBy CodePro at 3/28/14 10:59 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOC25Test {
	/**
	 * Run the hw1_500LOC25() constructor test.
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25_1()
		throws Exception {
		hw1_500LOC25 result = new hw1_500LOC25();
		assertNotNull(result);
		// add additional test code here
	}

	/**
	 * Run the int hw1_500LOC21method10(int,long,hw1_500LOC4) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC21method10_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		int var0 = 1;
		long var1 = 1L;
		hw1_500LOC4 var2 = new hw1_500LOC4();

		int result = fixture.hw1_500LOC21method10(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0, result);
	}

	/**
	 * Run the float hw1_500LOC21method11(double,short,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC21method11_1()
		throws Exception {
		double var0 = 1.0;
		short var1 = (short) 1;
		int var2 = 1;

		float result = hw1_500LOC25.hw1_500LOC21method11(var0, var1, var2);

		// add additional test code here
		assertEquals(0.15747255f, result, 0.1f);
	}

	/**
	 * Run the double hw1_500LOC21method19(float,String,char,byte,float,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC21method19_1()
		throws Exception {
		float var0 = 1.0f;
		String var1 = "";
		char var2 = '';
		byte var3 = (byte) 1;
		float var4 = 1.0f;
		short var5 = (short) 1;

		double result = hw1_500LOC25.hw1_500LOC21method19(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals(0.18378204065984327, result, 0.1);
	}

	/**
	 * Run the int hw1_500LOC21method2(float,String,float,double,String,String,double,int,hw1_500LOC0) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC21method2_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		float var0 = 1.0f;
		String var1 = "";
		float var2 = 1.0f;
		double var3 = 1.0;
		String var4 = "";
		String var5 = "";
		double var6 = 1.0;
		int var7 = 1;
		hw1_500LOC0 var8 = new hw1_500LOC0();

		int result = fixture.hw1_500LOC21method2(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0, result);
	}

	/**
	 * Run the double hw1_500LOC21method20(double,long,char,byte,long,int,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC21method20_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		double var0 = 1.0;
		long var1 = 1L;
		char var2 = '';
		byte var3 = (byte) 1;
		long var4 = 1L;
		int var5 = 1;
		int var6 = 1;

		double result = fixture.hw1_500LOC21method20(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the String hw1_500LOC21method23(short,byte,short,int,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC21method23_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		short var0 = (short) 1;
		byte var1 = (byte) 1;
		short var2 = (short) 1;
		int var3 = 1;
		byte var4 = (byte) 1;

		String result = fixture.hw1_500LOC21method23(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertNotNull(result);
	}

	/**
	 * Run the String hw1_500LOC21method27(String,double,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC21method27_1()
		throws Exception {
		String var0 = "";
		double var1 = 1.0;
		byte var2 = (byte) 1;

		String result = hw1_500LOC25.hw1_500LOC21method27(var0, var1, var2);

		// add additional test code here
		assertEquals("", result);
	}

	/**
	 * Run the long hw1_500LOC21method28(float,byte,double,float,float,hw1_500LOC33,hw1_500LOC7) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC21method28_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		float var0 = 1.0f;
		byte var1 = (byte) 1;
		double var2 = 1.0;
		float var3 = 1.0f;
		float var4 = 1.0f;
		hw1_500LOC33 var5 = new hw1_500LOC33();
		hw1_500LOC7 var6 = new hw1_500LOC7();

		long result = fixture.hw1_500LOC21method28(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0L, result);
	}

	/**
	 * Run the char hw1_500LOC21method32(String,String,long,short,long,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC21method32_1()
		throws Exception {
		String var0 = "";
		String var1 = "";
		long var2 = 1L;
		short var3 = (short) 1;
		long var4 = 1L;
		short var5 = (short) 1;

		char result = hw1_500LOC25.hw1_500LOC21method32(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals('b', result);
	}

	/**
	 * Run the Object hw1_500LOC21method8(byte,byte,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC21method8_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		byte var0 = (byte) 1;
		byte var1 = (byte) 1;
		double var2 = 1.0;

		Object result = fixture.hw1_500LOC21method8(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertNotNull(result);
	}

	/**
	 * Run the long hw1_500LOC25method0(char,short,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method0_1()
		throws Exception {
		char var0 = '';
		short var1 = (short) 1;
		byte var2 = (byte) 1;

		long result = hw1_500LOC25.hw1_500LOC25method0(var0, var1, var2);

		// add additional test code here
		assertEquals(9L, result);
	}

	/**
	 * Run the Object hw1_500LOC25method1(long,short,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method1_1()
		throws Exception {
		long var0 = 1L;
		short var1 = (short) 1;
		char var2 = '';

		Object result = hw1_500LOC25.hw1_500LOC25method1(var0, var1, var2);

		// add additional test code here
		assertEquals(null, result);
	}

	/**
	 * Run the float hw1_500LOC25method10(long,char,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method10_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		long var0 = 1L;
		char var1 = '';
		double var2 = 1.0;

		float result = fixture.hw1_500LOC25method10(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the byte hw1_500LOC25method11(float,int,double,long,long,short,char,short,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method11_1()
		throws Exception {
		float var0 = 1.0f;
		int var1 = 1;
		double var2 = 1.0;
		long var3 = 1L;
		long var4 = 1L;
		short var5 = (short) 1;
		char var6 = '';
		short var7 = (short) 1;
		float var8 = 1.0f;

		byte result = hw1_500LOC25.hw1_500LOC25method11(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals((byte) -46, result);
	}

	/**
	 * Run the long hw1_500LOC25method13(long,char,hw1_500LOC7,int,char,char,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method13_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		long var0 = 1L;
		char var1 = '';
		hw1_500LOC7 var2 = new hw1_500LOC7();
		int var3 = 1;
		char var4 = '';
		char var5 = '';
		short var6 = (short) 1;

		long result = fixture.hw1_500LOC25method13(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0L, result);
	}

	/**
	 * Run the byte hw1_500LOC25method14(String,short,float,int,double,long,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method14_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		String var0 = "";
		short var1 = (short) 1;
		float var2 = 1.0f;
		int var3 = 1;
		double var4 = 1.0;
		long var5 = 1L;
		float var6 = 1.0f;

		byte result = fixture.hw1_500LOC25method14(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the double hw1_500LOC25method15(double,hw1_500LOC30,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method15_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		double var0 = 1.0;
		hw1_500LOC30 var1 = new hw1_500LOC30();
		double var2 = 1.0;

		double result = fixture.hw1_500LOC25method15(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the String hw1_500LOC25method16(float,int,short,hw1_500LOC22,float,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method16_1()
		throws Exception {
		float var0 = 1.0f;
		int var1 = 1;
		short var2 = (short) 1;
		hw1_500LOC22 var3 = new hw1_500LOC22();
		float var4 = 1.0f;
		char var5 = '';

		String result = hw1_500LOC25.hw1_500LOC25method16(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals("mtqsqdkqakllrfxtvglhtaqdbcbzhjfqrfbskpzyklplawnexvdlrwwwlerfebwxbtyzjwyoxydlcfghetjioyojwgyn", result);
	}

	/**
	 * Run the double hw1_500LOC25method18(float,hw1_500LOC6,char,char,short,byte,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method18_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		float var0 = 1.0f;
		hw1_500LOC6 var1 = new hw1_500LOC6();
		char var2 = '';
		char var3 = '';
		short var4 = (short) 1;
		byte var5 = (byte) 1;
		short var6 = (short) 1;

		double result = fixture.hw1_500LOC25method18(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the double hw1_500LOC25method19(short,double,double,char,String,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method19_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		short var0 = (short) 1;
		double var1 = 1.0;
		double var2 = 1.0;
		char var3 = '';
		String var4 = "";
		float var5 = 1.0f;

		double result = fixture.hw1_500LOC25method19(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the char hw1_500LOC25method2(double,short,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method2_1()
		throws Exception {
		double var0 = 1.0;
		short var1 = (short) 1;
		float var2 = 1.0f;

		char result = hw1_500LOC25.hw1_500LOC25method2(var0, var1, var2);

		// add additional test code here
		assertEquals('k', result);
	}

	/**
	 * Run the Object hw1_500LOC25method20(byte,char,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method20_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		byte var0 = (byte) 1;
		char var1 = '';
		double var2 = 1.0;

		Object result = fixture.hw1_500LOC25method20(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertNotNull(result);
	}

	/**
	 * Run the double hw1_500LOC25method22(short,long,byte,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method22_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		short var0 = (short) 1;
		long var1 = 1L;
		byte var2 = (byte) 1;
		short var3 = (short) 1;

		double result = fixture.hw1_500LOC25method22(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the int hw1_500LOC25method23(double,double,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method23_1()
		throws Exception {
		double var0 = 1.0;
		double var1 = 1.0;
		char var2 = '';

		int result = hw1_500LOC25.hw1_500LOC25method23(var0, var1, var2);

		// add additional test code here
		assertEquals(71, result);
	}

	/**
	 * Run the byte hw1_500LOC25method24(double,hw1_500LOC12,String,double,double,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method24_1()
		throws Exception {
		double var0 = 1.0;
		hw1_500LOC12 var1 = new hw1_500LOC12();
		String var2 = "";
		double var3 = 1.0;
		double var4 = 1.0;
		char var5 = '';

		byte result = hw1_500LOC25.hw1_500LOC25method24(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals((byte) -85, result);
	}

	/**
	 * Run the float hw1_500LOC25method26(int,float,double,long,int,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method26_1()
		throws Exception {
		int var0 = 1;
		float var1 = 1.0f;
		double var2 = 1.0;
		long var3 = 1L;
		int var4 = 1;
		byte var5 = (byte) 1;

		float result = hw1_500LOC25.hw1_500LOC25method26(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the char hw1_500LOC25method27(char,int,long,double,long,char,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method27_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		char var0 = '';
		int var1 = 1;
		long var2 = 1L;
		double var3 = 1.0;
		long var4 = 1L;
		char var5 = '';
		String var6 = "";

		char result = fixture.hw1_500LOC25method27(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(' ', result);
	}

	/**
	 * Run the char hw1_500LOC25method29(String,long,float,float,int,char,hw1_500LOC32,hw1_500LOC17,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method29_1()
		throws Exception {
		String var0 = "";
		long var1 = 1L;
		float var2 = 1.0f;
		float var3 = 1.0f;
		int var4 = 1;
		char var5 = '';
		hw1_500LOC32 var6 = new hw1_500LOC32();
		hw1_500LOC17 var7 = new hw1_500LOC17();
		long var8 = 1L;

		char result = hw1_500LOC25.hw1_500LOC25method29(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals('', result);
	}

	/**
	 * Run the char hw1_500LOC25method3(int,char,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method3_1()
		throws Exception {
		int var0 = 1;
		char var1 = '';
		double var2 = 1.0;

		char result = hw1_500LOC25.hw1_500LOC25method3(var0, var1, var2);

		// add additional test code here
		assertEquals('', result);
	}

	/**
	 * Run the double hw1_500LOC25method30(float,float,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method30_1()
		throws Exception {
		float var0 = 1.0f;
		float var1 = 1.0f;
		String var2 = "";

		double result = hw1_500LOC25.hw1_500LOC25method30(var0, var1, var2);

		// add additional test code here
		assertEquals(0.05662853844079918, result, 0.1);
	}

	/**
	 * Run the double hw1_500LOC25method32(char,long,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method32_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		char var0 = '';
		long var1 = 1L;
		short var2 = (short) 1;

		double result = fixture.hw1_500LOC25method32(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the int hw1_500LOC25method33(double,short,int,float,double,String,byte,byte,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method33_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		double var0 = 1.0;
		short var1 = (short) 1;
		int var2 = 1;
		float var3 = 1.0f;
		double var4 = 1.0;
		String var5 = "";
		byte var6 = (byte) 1;
		byte var7 = (byte) 1;
		short var8 = (short) 1;

		int result = fixture.hw1_500LOC25method33(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0, result);
	}

	/**
	 * Run the int hw1_500LOC25method34(String,hw1_500LOC9,String,byte,long,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method34_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		String var0 = "";
		hw1_500LOC9 var1 = new hw1_500LOC9();
		String var2 = "";
		byte var3 = (byte) 1;
		long var4 = 1L;
		float var5 = 1.0f;

		int result = fixture.hw1_500LOC25method34(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0, result);
	}

	/**
	 * Run the long hw1_500LOC25method7(byte,float,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method7_1()
		throws Exception {
		byte var0 = (byte) 1;
		float var1 = 1.0f;
		String var2 = "";

		long result = hw1_500LOC25.hw1_500LOC25method7(var0, var1, var2);

		// add additional test code here
		assertEquals(67L, result);
	}

	/**
	 * Run the short hw1_500LOC25method8(double,long,char,float,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC25method8_1()
		throws Exception {
		double var0 = 1.0;
		long var1 = 1L;
		char var2 = '';
		float var3 = 1.0f;
		String var4 = "";

		short result = hw1_500LOC25.hw1_500LOC25method8(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals((short) 5296, result);
	}

	/**
	 * Run the short hw1_500LOCInterface7Method0(double,String,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOCInterface7Method0_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		double var0 = 1.0;
		String var1 = "";
		float var2 = 1.0f;

		short result = fixture.hw1_500LOCInterface7Method0(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals((short) 0, result);
	}

	/**
	 * Run the long hw1_500LOCInterface7Method1(int,byte,double,long,int,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOCInterface7Method1_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		int var0 = 1;
		byte var1 = (byte) 1;
		double var2 = 1.0;
		long var3 = 1L;
		int var4 = 1;
		short var5 = (short) 1;

		long result = fixture.hw1_500LOCInterface7Method1(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0L, result);
	}

	/**
	 * Run the double hw1_500LOCInterface7Method2(int,String,double,char,char,short,int,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOCInterface7Method2_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		int var0 = 1;
		String var1 = "";
		double var2 = 1.0;
		char var3 = '';
		char var4 = '';
		short var5 = (short) 1;
		int var6 = 1;
		short var7 = (short) 1;

		double result = fixture.hw1_500LOCInterface7Method2(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the String hw1_500LOCInterface7Method3(double,short,hw1_500LOC31,long,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOCInterface7Method3_1()
		throws Exception {
		hw1_500LOC25 fixture = new hw1_500LOC25();
		fixture.f0 = new hw1_500LOC10();
		double var0 = 1.0;
		short var1 = (short) 1;
		hw1_500LOC31 var2 = new hw1_500LOC31();
		long var3 = 1L;
		byte var4 = (byte) 1;

		String result = fixture.hw1_500LOCInterface7Method3(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC25.f0 to test.hw1_500LOC10
		assertNotNull(result);
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

		hw1_500LOC25.main(args);

		// add additional test code here
	}

	/**
	 * Run the void singleEntry(int,int,int,int,int,int,int,int,int,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
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

		hw1_500LOC25.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

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
		new org.junit.runner.JUnitCore().run(hw1_500LOC25Test.class);
	}
}