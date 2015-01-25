package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOC30Test</code> contains tests for the class <code>{@link hw1_500LOC30}</code>.
 *
 * @generatedBy CodePro at 3/28/14 11:00 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOC30Test {
	/**
	 * Run the hw1_500LOC30() constructor test.
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30_1()
		throws Exception {
		hw1_500LOC30 result = new hw1_500LOC30();
		assertNotNull(result);
		// add additional test code here
	}

	/**
	 * Run the long hw1_500LOC30method1(short,short,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method1_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		short var0 = (short) 1;
		short var1 = (short) 1;
		double var2 = 1.0;

		long result = fixture.hw1_500LOC30method1(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals(0L, result);
	}

	/**
	 * Run the String hw1_500LOC30method13(long,int,int,int,long,char,char,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method13_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		long var0 = 1L;
		int var1 = 1;
		int var2 = 1;
		int var3 = 1;
		long var4 = 1L;
		char var5 = '';
		char var6 = '';
		double var7 = 1.0;

		String result = fixture.hw1_500LOC30method13(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertNotNull(result);
	}

	/**
	 * Run the float hw1_500LOC30method16(long,hw1_500LOC16,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method16_1()
		throws Exception {
		long var0 = 1L;
		hw1_500LOC16 var1 = new hw1_500LOC16();
		String var2 = "";

		float result = hw1_500LOC30.hw1_500LOC30method16(var0, var1, var2);

		// add additional test code here
		assertEquals(0.14595437f, result, 0.1f);
	}

	/**
	 * Run the long hw1_500LOC30method17(byte,char,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method17_1()
		throws Exception {
		byte var0 = (byte) 1;
		char var1 = '';
		float var2 = 1.0f;

		long result = hw1_500LOC30.hw1_500LOC30method17(var0, var1, var2);

		// add additional test code here
		assertEquals(92L, result);
	}

	/**
	 * Run the Object hw1_500LOC30method2(short,short,double,long,int,short,double,hw1_500LOC8,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method2_1()
		throws Exception {
		short var0 = (short) 1;
		short var1 = (short) 1;
		double var2 = 1.0;
		long var3 = 1L;
		int var4 = 1;
		short var5 = (short) 1;
		double var6 = 1.0;
		hw1_500LOC8 var7 = new hw1_500LOC8();
		byte var8 = (byte) 1;

		Object result = hw1_500LOC30.hw1_500LOC30method2(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the byte hw1_500LOC30method20(float,int,long,hw1_500LOC32,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method20_1()
		throws Exception {
		float var0 = 1.0f;
		int var1 = 1;
		long var2 = 1L;
		hw1_500LOC32 var3 = new hw1_500LOC32();
		String var4 = "";

		byte result = hw1_500LOC30.hw1_500LOC30method20(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals((byte) 3, result);
	}

	/**
	 * Run the int hw1_500LOC30method22(long,hw1_500LOC0,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method22_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		long var0 = 1L;
		hw1_500LOC0 var1 = new hw1_500LOC0();
		float var2 = 1.0f;

		int result = fixture.hw1_500LOC30method22(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals(0, result);
	}

	/**
	 * Run the char hw1_500LOC30method24(float,String,int,char,String,hw1_500LOC7,hw1_500LOC29) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method24_1()
		throws Exception {
		float var0 = 1.0f;
		String var1 = "";
		int var2 = 1;
		char var3 = '';
		String var4 = "";
		hw1_500LOC7 var5 = new hw1_500LOC7();
		hw1_500LOC29 var6 = new hw1_500LOC29();

		char result = hw1_500LOC30.hw1_500LOC30method24(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals('', result);
	}

	/**
	 * Run the double hw1_500LOC30method25(double,float,double,String,hw1_500LOC14,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method25_1()
		throws Exception {
		double var0 = 1.0;
		float var1 = 1.0f;
		double var2 = 1.0;
		String var3 = "";
		hw1_500LOC14 var4 = new hw1_500LOC14();
		short var5 = (short) 1;

		double result = hw1_500LOC30.hw1_500LOC30method25(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the Object hw1_500LOC30method26(byte,long,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method26_1()
		throws Exception {
		byte var0 = (byte) 1;
		long var1 = 1L;
		long var2 = 1L;

		Object result = hw1_500LOC30.hw1_500LOC30method26(var0, var1, var2);

		// add additional test code here
		assertEquals(null, result);
	}

	/**
	 * Run the short hw1_500LOC30method28(byte,long,long,byte,String,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method28_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		byte var0 = (byte) 1;
		long var1 = 1L;
		long var2 = 1L;
		byte var3 = (byte) 1;
		String var4 = "";
		byte var5 = (byte) 1;

		short result = fixture.hw1_500LOC30method28(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals((short) 0, result);
	}

	/**
	 * Run the float hw1_500LOC30method29(double,long,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method29_1()
		throws Exception {
		double var0 = 1.0;
		long var1 = 1L;
		byte var2 = (byte) 1;

		float result = hw1_500LOC30.hw1_500LOC30method29(var0, var1, var2);

		// add additional test code here
		assertEquals(0.014569402f, result, 0.1f);
	}

	/**
	 * Run the String hw1_500LOC30method3(char,int,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method3_1()
		throws Exception {
		char var0 = '';
		int var1 = 1;
		short var2 = (short) 1;

		String result = hw1_500LOC30.hw1_500LOC30method3(var0, var1, var2);

		// add additional test code here
		assertEquals("todtrpytbhxsqxlomgzqqgmpncwevzamsvsqdehdwozwocrdgguxkucrhcakwbknpkkseboceqxfitxuzlnifozdh", result);
	}

	/**
	 * Run the double hw1_500LOC30method31(byte,hw1_500LOC17,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method31_1()
		throws Exception {
		byte var0 = (byte) 1;
		hw1_500LOC17 var1 = new hw1_500LOC17();
		char var2 = '';

		double result = hw1_500LOC30.hw1_500LOC30method31(var0, var1, var2);

		// add additional test code here
		assertEquals(0.3622099243658877, result, 0.1);
	}

	/**
	 * Run the Object hw1_500LOC30method32(hw1_500LOC10,byte,char,double,double,byte,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method32_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		hw1_500LOC10 var0 = new hw1_500LOC10();
		byte var1 = (byte) 1;
		char var2 = '';
		double var3 = 1.0;
		double var4 = 1.0;
		byte var5 = (byte) 1;
		short var6 = (short) 1;

		Object result = fixture.hw1_500LOC30method32(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertNotNull(result);
	}

	/**
	 * Run the String hw1_500LOC30method33(char,byte,short,hw1_500LOC33,short,short,short,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method33_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		char var0 = '';
		byte var1 = (byte) 1;
		short var2 = (short) 1;
		hw1_500LOC33 var3 = new hw1_500LOC33();
		short var4 = (short) 1;
		short var5 = (short) 1;
		short var6 = (short) 1;
		int var7 = 1;

		String result = fixture.hw1_500LOC30method33(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertNotNull(result);
	}

	/**
	 * Run the byte hw1_500LOC30method35(char,long,hw1_500LOC30,int,int,String,hw1_500LOC34) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method35_1()
		throws Exception {
		char var0 = '';
		long var1 = 1L;
		hw1_500LOC30 var2 = new hw1_500LOC30();
		int var3 = 1;
		int var4 = 1;
		String var5 = "";
		hw1_500LOC34 var6 = new hw1_500LOC34();

		byte result = hw1_500LOC30.hw1_500LOC30method35(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals((byte) -64, result);
	}

	/**
	 * Run the byte hw1_500LOC30method36(int,byte,char,String,byte,hw1_500LOC14,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method36_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		int var0 = 1;
		byte var1 = (byte) 1;
		char var2 = '';
		String var3 = "";
		byte var4 = (byte) 1;
		hw1_500LOC14 var5 = new hw1_500LOC14();
		long var6 = 1L;

		byte result = fixture.hw1_500LOC30method36(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the byte hw1_500LOC30method39(char,hw1_500LOC19,int,hw1_500LOC20,float,short,float,float,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method39_1()
		throws Exception {
		char var0 = '';
		hw1_500LOC19 var1 = new hw1_500LOC19();
		int var2 = 1;
		hw1_500LOC20 var3 = new hw1_500LOC20();
		float var4 = 1.0f;
		short var5 = (short) 1;
		float var6 = 1.0f;
		float var7 = 1.0f;
		byte var8 = (byte) 1;

		byte result = hw1_500LOC30.hw1_500LOC30method39(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals((byte) 1, result);
	}

	/**
	 * Run the Object hw1_500LOC30method4(float,short,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method4_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		float var0 = 1.0f;
		short var1 = (short) 1;
		long var2 = 1L;

		Object result = fixture.hw1_500LOC30method4(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertNotNull(result);
	}

	/**
	 * Run the short hw1_500LOC30method41(short,double,String,hw1_500LOC9) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method41_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		short var0 = (short) 1;
		double var1 = 1.0;
		String var2 = "";
		hw1_500LOC9 var3 = new hw1_500LOC9();

		short result = fixture.hw1_500LOC30method41(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals((short) 0, result);
	}

	/**
	 * Run the String hw1_500LOC30method42(long,byte,long,char,hw1_500LOC26,String,char,int,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method42_1()
		throws Exception {
		long var0 = 1L;
		byte var1 = (byte) 1;
		long var2 = 1L;
		char var3 = '';
		hw1_500LOC26 var4 = new hw1_500LOC26();
		String var5 = "";
		char var6 = '';
		int var7 = 1;
		short var8 = (short) 1;

		String result = hw1_500LOC30.hw1_500LOC30method42(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals("", result);
	}

	/**
	 * Run the byte hw1_500LOC30method44(hw1_500LOC26,int,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method44_1()
		throws Exception {
		hw1_500LOC26 var0 = new hw1_500LOC26();
		int var1 = 1;
		long var2 = 1L;

		byte result = hw1_500LOC30.hw1_500LOC30method44(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) 61, result);
	}

	/**
	 * Run the float hw1_500LOC30method5(short,String,int,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method5_1()
		throws Exception {
		short var0 = (short) 1;
		String var1 = "";
		int var2 = 1;
		float var3 = 1.0f;

		float result = hw1_500LOC30.hw1_500LOC30method5(var0, var1, var2, var3);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the byte hw1_500LOC30method6(int,double,long,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method6_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		int var0 = 1;
		double var1 = 1.0;
		long var2 = 1L;
		int var3 = 1;

		byte result = fixture.hw1_500LOC30method6(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the int hw1_500LOC30method7(long,long,long,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method7_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		long var0 = 1L;
		long var1 = 1L;
		long var2 = 1L;
		int var3 = 1;

		int result = fixture.hw1_500LOC30method7(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals(0, result);
	}

	/**
	 * Run the short hw1_500LOC30method9(String,int,float,String,float,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC30method9_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		String var0 = "";
		int var1 = 1;
		float var2 = 1.0f;
		String var3 = "";
		float var4 = 1.0f;
		int var5 = 1;

		short result = fixture.hw1_500LOC30method9(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals((short) 0, result);
	}

	/**
	 * Run the String hw1_500LOC33method0(double,int,float,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC33method0_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		double var0 = 1.0;
		int var1 = 1;
		float var2 = 1.0f;
		String var3 = "";

		String result = fixture.hw1_500LOC33method0(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertNotNull(result);
	}

	/**
	 * Run the double hw1_500LOC33method19(String,char,char,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC33method19_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		String var0 = "";
		char var1 = '';
		char var2 = '';
		String var3 = "";

		double result = fixture.hw1_500LOC33method19(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the byte hw1_500LOC33method2(int,int,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC33method2_1()
		throws Exception {
		int var0 = 1;
		int var1 = 1;
		double var2 = 1.0;

		byte result = hw1_500LOC30.hw1_500LOC33method2(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) 82, result);
	}

	/**
	 * Run the char hw1_500LOC33method25(double,short,double,int,double,hw1_500LOC15,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC33method25_1()
		throws Exception {
		double var0 = 1.0;
		short var1 = (short) 1;
		double var2 = 1.0;
		int var3 = 1;
		double var4 = 1.0;
		hw1_500LOC15 var5 = new hw1_500LOC15();
		int var6 = 1;

		char result = hw1_500LOC30.hw1_500LOC33method25(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals('e', result);
	}

	/**
	 * Run the String hw1_500LOC33method7(short,float,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC33method7_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		short var0 = (short) 1;
		float var1 = 1.0f;
		int var2 = 1;

		String result = fixture.hw1_500LOC33method7(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertNotNull(result);
	}

	/**
	 * Run the char hw1_500LOC5method0(int,hw1_500LOC10,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method0_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		int var0 = 1;
		hw1_500LOC10 var1 = new hw1_500LOC10();
		char var2 = '';

		char result = fixture.hw1_500LOC5method0(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals(' ', result);
	}

	/**
	 * Run the float hw1_500LOC5method10(long,double,long,String,float,byte,long,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method10_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		long var0 = 1L;
		double var1 = 1.0;
		long var2 = 1L;
		String var3 = "";
		float var4 = 1.0f;
		byte var5 = (byte) 1;
		long var6 = 1L;
		long var7 = 1L;

		float result = fixture.hw1_500LOC5method10(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the long hw1_500LOC5method13(int,byte,double,double,String,short,double,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method13_1()
		throws Exception {
		int var0 = 1;
		byte var1 = (byte) 1;
		double var2 = 1.0;
		double var3 = 1.0;
		String var4 = "";
		short var5 = (short) 1;
		double var6 = 1.0;
		long var7 = 1L;

		long result = hw1_500LOC30.hw1_500LOC5method13(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(1L, result);
	}

	/**
	 * Run the float hw1_500LOC5method14(int,short,char,hw1_500LOC13,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method14_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		int var0 = 1;
		short var1 = (short) 1;
		char var2 = '';
		hw1_500LOC13 var3 = new hw1_500LOC13();
		char var4 = '';

		float result = fixture.hw1_500LOC5method14(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the Object hw1_500LOC5method19(short,char,float,float,double,long,short,hw1_500LOC11) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method19_1()
		throws Exception {
		short var0 = (short) 1;
		char var1 = '';
		float var2 = 1.0f;
		float var3 = 1.0f;
		double var4 = 1.0;
		long var5 = 1L;
		short var6 = (short) 1;
		hw1_500LOC11 var7 = new hw1_500LOC11();

		Object result = hw1_500LOC30.hw1_500LOC5method19(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the char hw1_500LOC5method2(hw1_500LOC29,double,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method2_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		hw1_500LOC29 var0 = new hw1_500LOC29();
		double var1 = 1.0;
		String var2 = "";

		char result = fixture.hw1_500LOC5method2(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals(' ', result);
	}

	/**
	 * Run the String hw1_500LOC5method26(byte,int,double,hw1_500LOC15,short,byte,short,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method26_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		byte var0 = (byte) 1;
		int var1 = 1;
		double var2 = 1.0;
		hw1_500LOC15 var3 = new hw1_500LOC15();
		short var4 = (short) 1;
		byte var5 = (byte) 1;
		short var6 = (short) 1;
		char var7 = '';

		String result = fixture.hw1_500LOC5method26(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertNotNull(result);
	}

	/**
	 * Run the int hw1_500LOC5method27(float,char,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method27_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		float var0 = 1.0f;
		char var1 = '';
		byte var2 = (byte) 1;

		int result = fixture.hw1_500LOC5method27(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals(0, result);
	}

	/**
	 * Run the short hw1_500LOC5method32(char,short,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method32_1()
		throws Exception {
		char var0 = '';
		short var1 = (short) 1;
		String var2 = "";

		short result = hw1_500LOC30.hw1_500LOC5method32(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the byte hw1_500LOC5method33(int,byte,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method33_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		int var0 = 1;
		byte var1 = (byte) 1;
		float var2 = 1.0f;

		byte result = fixture.hw1_500LOC5method33(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the long hw1_500LOCInterface7Method1(int,byte,double,long,int,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOCInterface7Method1_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		int var0 = 1;
		byte var1 = (byte) 1;
		double var2 = 1.0;
		long var3 = 1L;
		int var4 = 1;
		short var5 = (short) 1;

		long result = fixture.hw1_500LOCInterface7Method1(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals(0L, result);
	}

	/**
	 * Run the double hw1_500LOCInterface7Method2(int,String,double,char,char,short,int,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOCInterface7Method2_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
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
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the String hw1_500LOCInterface7Method3(double,short,hw1_500LOC31,long,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOCInterface7Method3_1()
		throws Exception {
		hw1_500LOC30 fixture = new hw1_500LOC30();
		fixture.f1 = new int[] {};
		fixture.f0 = new long[] {};
		fixture.f2 = new float[] {};
		double var0 = 1.0;
		short var1 = (short) 1;
		hw1_500LOC31 var2 = new hw1_500LOC31();
		long var3 = 1L;
		byte var4 = (byte) 1;

		String result = fixture.hw1_500LOCInterface7Method3(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static byte field test.hw1_500LOC30.f1 to [I
		assertNotNull(result);
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

		hw1_500LOC30.main(args);

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

		hw1_500LOC30.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

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
		new org.junit.runner.JUnitCore().run(hw1_500LOC30Test.class);
	}
}