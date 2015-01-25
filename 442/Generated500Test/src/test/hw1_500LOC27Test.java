package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOC27Test</code> contains tests for the class <code>{@link hw1_500LOC27}</code>.
 *
 * @generatedBy CodePro at 3/28/14 11:00 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOC27Test {
	/**
	 * Run the long hw1_500LOC20method1(int,byte,int,int,byte,String,hw1_500LOC25) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC20method1_1()
		throws Exception {
		int var0 = 1;
		byte var1 = (byte) 1;
		int var2 = 1;
		int var3 = 1;
		byte var4 = (byte) 1;
		String var5 = "";
		hw1_500LOC25 var6 = new hw1_500LOC25();

		long result = hw1_500LOC27.hw1_500LOC20method1(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals(8L, result);
	}

	/**
	 * Run the char hw1_500LOC20method10(long,int,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC20method10_1()
		throws Exception {
		long var0 = 1L;
		int var1 = 1;
		byte var2 = (byte) 1;

		char result = hw1_500LOC27.hw1_500LOC20method10(var0, var1, var2);

		// add additional test code here
		assertEquals('k', result);
	}

	/**
	 * Run the double hw1_500LOC20method13(byte,float,hw1_500LOC12,double,hw1_500LOC12,char,char,int,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC20method13_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		byte var0 = (byte) 1;
		float var1 = 1.0f;
		hw1_500LOC12 var2 = new hw1_500LOC12();
		double var3 = 1.0;
		hw1_500LOC12 var4 = new hw1_500LOC12();
		char var5 = '';
		char var6 = '';
		int var7 = 1;
		long var8 = 1L;

		double result = fixture.hw1_500LOC20method13(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the long hw1_500LOC20method16(hw1_500LOC33,float,byte,short,byte,long,long,long,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC20method16_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		hw1_500LOC33 var0 = new hw1_500LOC33();
		float var1 = 1.0f;
		byte var2 = (byte) 1;
		short var3 = (short) 1;
		byte var4 = (byte) 1;
		long var5 = 1L;
		long var6 = 1L;
		long var7 = 1L;
		short var8 = (short) 1;

		long result = fixture.hw1_500LOC20method16(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(0L, result);
	}

	/**
	 * Run the Object hw1_500LOC20method18(float,hw1_500LOC16,int,double,short,short,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC20method18_1()
		throws Exception {
		float var0 = 1.0f;
		hw1_500LOC16 var1 = new hw1_500LOC16();
		int var2 = 1;
		double var3 = 1.0;
		short var4 = (short) 1;
		short var5 = (short) 1;
		int var6 = 1;

		Object result = hw1_500LOC27.hw1_500LOC20method18(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the int hw1_500LOC20method2(String,byte,long,byte,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC20method2_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		String var0 = "";
		byte var1 = (byte) 1;
		long var2 = 1L;
		byte var3 = (byte) 1;
		float var4 = 1.0f;

		int result = fixture.hw1_500LOC20method2(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(0, result);
	}

	/**
	 * Run the char hw1_500LOC20method22(short,float,char,int,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC20method22_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		short var0 = (short) 1;
		float var1 = 1.0f;
		char var2 = '';
		int var3 = 1;
		int var4 = 1;

		char result = fixture.hw1_500LOC20method22(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(' ', result);
	}

	/**
	 * Run the int hw1_500LOC20method23(float,short,String,int,int,String,hw1_500LOC13,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC20method23_1()
		throws Exception {
		float var0 = 1.0f;
		short var1 = (short) 1;
		String var2 = "";
		int var3 = 1;
		int var4 = 1;
		String var5 = "";
		hw1_500LOC13 var6 = new hw1_500LOC13();
		byte var7 = (byte) 1;

		int result = hw1_500LOC27.hw1_500LOC20method23(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the String hw1_500LOC20method3(byte,hw1_500LOC11,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC20method3_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		byte var0 = (byte) 1;
		hw1_500LOC11 var1 = new hw1_500LOC11();
		long var2 = 1L;

		String result = fixture.hw1_500LOC20method3(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertNotNull(result);
	}

	/**
	 * Run the byte hw1_500LOC20method7(double,double,int,long,String,float,double,float,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC20method7_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		double var0 = 1.0;
		double var1 = 1.0;
		int var2 = 1;
		long var3 = 1L;
		String var4 = "";
		float var5 = 1.0f;
		double var6 = 1.0;
		float var7 = 1.0f;
		char var8 = '';

		byte result = fixture.hw1_500LOC20method7(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the byte hw1_500LOC20method8(byte,hw1_500LOC21,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC20method8_1()
		throws Exception {
		byte var0 = (byte) 1;
		hw1_500LOC21 var1 = new hw1_500LOC21();
		short var2 = (short) 1;

		byte result = hw1_500LOC27.hw1_500LOC20method8(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) 1, result);
	}

	/**
	 * Run the Object hw1_500LOC27method1(long,String,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method1_1()
		throws Exception {
		long var0 = 1L;
		String var1 = "";
		char var2 = '';

		Object result = hw1_500LOC27.hw1_500LOC27method1(var0, var1, var2);

		// add additional test code here
		assertEquals(null, result);
	}

	/**
	 * Run the int hw1_500LOC27method13(float,short,short,hw1_500LOC9,hw1_500LOC23,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method13_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		float var0 = 1.0f;
		short var1 = (short) 1;
		short var2 = (short) 1;
		hw1_500LOC9 var3 = new hw1_500LOC9();
		hw1_500LOC23 var4 = new hw1_500LOC23();
		int var5 = 1;

		int result = fixture.hw1_500LOC27method13(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(0, result);
	}

	/**
	 * Run the Object hw1_500LOC27method16(byte,float,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method16_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		byte var0 = (byte) 1;
		float var1 = 1.0f;
		double var2 = 1.0;

		Object result = fixture.hw1_500LOC27method16(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertNotNull(result);
	}

	/**
	 * Run the float hw1_500LOC27method17(int,int,double,String,short,char,byte,long,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method17_1()
		throws Exception {
		int var0 = 1;
		int var1 = 1;
		double var2 = 1.0;
		String var3 = "";
		short var4 = (short) 1;
		char var5 = '';
		byte var6 = (byte) 1;
		long var7 = 1L;
		float var8 = 1.0f;

		float result = hw1_500LOC27.hw1_500LOC27method17(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the short hw1_500LOC27method2(int,byte,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method2_1()
		throws Exception {
		int var0 = 1;
		byte var1 = (byte) 1;
		String var2 = "";

		short result = hw1_500LOC27.hw1_500LOC27method2(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 6951, result);
	}

	/**
	 * Run the long hw1_500LOC27method21(char,int,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method21_1()
		throws Exception {
		char var0 = '';
		int var1 = 1;
		float var2 = 1.0f;

		long result = hw1_500LOC27.hw1_500LOC27method21(var0, var1, var2);

		// add additional test code here
		assertEquals(81L, result);
	}

	/**
	 * Run the int hw1_500LOC27method22(char,String,short,int,char,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method22_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		char var0 = '';
		String var1 = "";
		short var2 = (short) 1;
		int var3 = 1;
		char var4 = '';
		float var5 = 1.0f;

		int result = fixture.hw1_500LOC27method22(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(0, result);
	}

	/**
	 * Run the double hw1_500LOC27method24(int,hw1_500LOC16,int,short,char,long,int,byte,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method24_1()
		throws Exception {
		int var0 = 1;
		hw1_500LOC16 var1 = new hw1_500LOC16();
		int var2 = 1;
		short var3 = (short) 1;
		char var4 = '';
		long var5 = 1L;
		int var6 = 1;
		byte var7 = (byte) 1;
		long var8 = 1L;

		double result = hw1_500LOC27.hw1_500LOC27method24(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals(0.0313830700260026, result, 0.1);
	}

	/**
	 * Run the double hw1_500LOC27method25(String,double,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method25_1()
		throws Exception {
		String var0 = "";
		double var1 = 1.0;
		int var2 = 1;

		double result = hw1_500LOC27.hw1_500LOC27method25(var0, var1, var2);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the Object hw1_500LOC27method26(long,int,int,hw1_500LOC9) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method26_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		long var0 = 1L;
		int var1 = 1;
		int var2 = 1;
		hw1_500LOC9 var3 = new hw1_500LOC9();

		Object result = fixture.hw1_500LOC27method26(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertNotNull(result);
	}

	/**
	 * Run the long hw1_500LOC27method28(short,byte,int,byte,String,float,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method28_1()
		throws Exception {
		short var0 = (short) 1;
		byte var1 = (byte) 1;
		int var2 = 1;
		byte var3 = (byte) 1;
		String var4 = "";
		float var5 = 1.0f;
		int var6 = 1;

		long result = hw1_500LOC27.hw1_500LOC27method28(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals(22L, result);
	}

	/**
	 * Run the Object hw1_500LOC27method29(double,byte,char,float,hw1_500LOC0,short,hw1_500LOC20) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method29_1()
		throws Exception {
		double var0 = 1.0;
		byte var1 = (byte) 1;
		char var2 = '';
		float var3 = 1.0f;
		hw1_500LOC0 var4 = new hw1_500LOC0();
		short var5 = (short) 1;
		hw1_500LOC20 var6 = new hw1_500LOC20();

		Object result = hw1_500LOC27.hw1_500LOC27method29(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the byte hw1_500LOC27method3(byte,double,double,int,hw1_500LOC16,byte,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method3_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		byte var0 = (byte) 1;
		double var1 = 1.0;
		double var2 = 1.0;
		int var3 = 1;
		hw1_500LOC16 var4 = new hw1_500LOC16();
		byte var5 = (byte) 1;
		float var6 = 1.0f;

		byte result = fixture.hw1_500LOC27method3(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the char hw1_500LOC27method31(char,long,float,hw1_500LOC11,hw1_500LOC16,hw1_500LOC31,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method31_1()
		throws Exception {
		char var0 = '';
		long var1 = 1L;
		float var2 = 1.0f;
		hw1_500LOC11 var3 = new hw1_500LOC11();
		hw1_500LOC16 var4 = new hw1_500LOC16();
		hw1_500LOC31 var5 = new hw1_500LOC31();
		char var6 = '';

		char result = hw1_500LOC27.hw1_500LOC27method31(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals('', result);
	}

	/**
	 * Run the Object hw1_500LOC27method32(float,char,String,hw1_500LOC6,short,hw1_500LOC1,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method32_1()
		throws Exception {
		float var0 = 1.0f;
		char var1 = '';
		String var2 = "";
		hw1_500LOC6 var3 = new hw1_500LOC6();
		short var4 = (short) 1;
		hw1_500LOC1 var5 = new hw1_500LOC1();
		String var6 = "";

		Object result = hw1_500LOC27.hw1_500LOC27method32(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the float hw1_500LOC27method33(hw1_500LOC18,hw1_500LOC17,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method33_1()
		throws Exception {
		hw1_500LOC18 var0 = new hw1_500LOC18();
		hw1_500LOC17 var1 = new hw1_500LOC17();
		double var2 = 1.0;

		float result = hw1_500LOC27.hw1_500LOC27method33(var0, var1, var2);

		// add additional test code here
		assertEquals(0.59785163f, result, 0.1f);
	}

	/**
	 * Run the double hw1_500LOC27method35(long,byte,char,hw1_500LOC19,byte,char,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method35_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		long var0 = 1L;
		byte var1 = (byte) 1;
		char var2 = '';
		hw1_500LOC19 var3 = new hw1_500LOC19();
		byte var4 = (byte) 1;
		char var5 = '';
		long var6 = 1L;

		double result = fixture.hw1_500LOC27method35(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the short hw1_500LOC27method36(int,int,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method36_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		int var0 = 1;
		int var1 = 1;
		char var2 = '';

		short result = fixture.hw1_500LOC27method36(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals((short) 0, result);
	}

	/**
	 * Run the short hw1_500LOC27method37(hw1_500LOC23,short,long,char,String,int,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method37_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		hw1_500LOC23 var0 = new hw1_500LOC23();
		short var1 = (short) 1;
		long var2 = 1L;
		char var3 = '';
		String var4 = "";
		int var5 = 1;
		char var6 = '';

		short result = fixture.hw1_500LOC27method37(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals((short) 0, result);
	}

	/**
	 * Run the long hw1_500LOC27method4(char,long,String,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method4_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		char var0 = '';
		long var1 = 1L;
		String var2 = "";
		byte var3 = (byte) 1;

		long result = fixture.hw1_500LOC27method4(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(0L, result);
	}

	/**
	 * Run the long hw1_500LOC27method40(float,float,String,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method40_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		float var0 = 1.0f;
		float var1 = 1.0f;
		String var2 = "";
		int var3 = 1;

		long result = fixture.hw1_500LOC27method40(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(0L, result);
	}

	/**
	 * Run the long hw1_500LOC27method42(long,int,hw1_500LOC5,float,String,hw1_500LOC32) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method42_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		long var0 = 1L;
		int var1 = 1;
		hw1_500LOC5 var2 = new hw1_500LOC5();
		float var3 = 1.0f;
		String var4 = "";
		hw1_500LOC32 var5 = new hw1_500LOC32();

		long result = fixture.hw1_500LOC27method42(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(0L, result);
	}

	/**
	 * Run the short hw1_500LOC27method43(double,hw1_500LOC18,byte,long,byte,hw1_500LOC6,float,float,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method43_1()
		throws Exception {
		double var0 = 1.0;
		hw1_500LOC18 var1 = new hw1_500LOC18();
		byte var2 = (byte) 1;
		long var3 = 1L;
		byte var4 = (byte) 1;
		hw1_500LOC6 var5 = new hw1_500LOC6();
		float var6 = 1.0f;
		float var7 = 1.0f;
		short var8 = (short) 1;

		short result = hw1_500LOC27.hw1_500LOC27method43(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the int hw1_500LOC27method5(byte,float,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method5_1()
		throws Exception {
		byte var0 = (byte) 1;
		float var1 = 1.0f;
		int var2 = 1;

		int result = hw1_500LOC27.hw1_500LOC27method5(var0, var1, var2);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the int hw1_500LOC27method6(float,char,float,double,int,hw1_500LOC7,String,hw1_500LOC17,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method6_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		float var0 = 1.0f;
		char var1 = '';
		float var2 = 1.0f;
		double var3 = 1.0;
		int var4 = 1;
		hw1_500LOC7 var5 = new hw1_500LOC7();
		String var6 = "";
		hw1_500LOC17 var7 = new hw1_500LOC17();
		long var8 = 1L;

		int result = fixture.hw1_500LOC27method6(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(0, result);
	}

	/**
	 * Run the String hw1_500LOC27method7(byte,float,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method7_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		byte var0 = (byte) 1;
		float var1 = 1.0f;
		double var2 = 1.0;

		String result = fixture.hw1_500LOC27method7(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertNotNull(result);
	}

	/**
	 * Run the char hw1_500LOC27method9(String,double,String,byte,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC27method9_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		String var0 = "";
		double var1 = 1.0;
		String var2 = "";
		byte var3 = (byte) 1;
		double var4 = 1.0;

		char result = fixture.hw1_500LOC27method9(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(' ', result);
	}

	/**
	 * Run the float hw1_500LOC3method11(short,long,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC3method11_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		short var0 = (short) 1;
		long var1 = 1L;
		long var2 = 1L;

		float result = fixture.hw1_500LOC3method11(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the char hw1_500LOC3method14(long,long,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC3method14_1()
		throws Exception {
		long var0 = 1L;
		long var1 = 1L;
		short var2 = (short) 1;

		char result = hw1_500LOC27.hw1_500LOC3method14(var0, var1, var2);

		// add additional test code here
		assertEquals('g', result);
	}

	/**
	 * Run the int hw1_500LOC3method15(char,byte,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC3method15_1()
		throws Exception {
		char var0 = '';
		byte var1 = (byte) 1;
		byte var2 = (byte) 1;

		int result = hw1_500LOC27.hw1_500LOC3method15(var0, var1, var2);

		// add additional test code here
		assertEquals(50, result);
	}

	/**
	 * Run the long hw1_500LOC3method2(int,short,hw1_500LOC32,hw1_500LOC17,byte,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC3method2_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		int var0 = 1;
		short var1 = (short) 1;
		hw1_500LOC32 var2 = new hw1_500LOC32();
		hw1_500LOC17 var3 = new hw1_500LOC17();
		byte var4 = (byte) 1;
		char var5 = '';

		long result = fixture.hw1_500LOC3method2(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(0L, result);
	}

	/**
	 * Run the float hw1_500LOC3method5(long,long,float,long,short,String,char,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
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

		float result = hw1_500LOC27.hw1_500LOC3method5(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the byte hw1_500LOC3method9(short,String,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC3method9_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		short var0 = (short) 1;
		String var1 = "";
		double var2 = 1.0;

		byte result = fixture.hw1_500LOC3method9(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the short hw1_500LOCInterface8Method0(float,char,byte,char,float,long,String,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOCInterface8Method0_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		float var0 = 1.0f;
		char var1 = '';
		byte var2 = (byte) 1;
		char var3 = '';
		float var4 = 1.0f;
		long var5 = 1L;
		String var6 = "";
		long var7 = 1L;

		short result = fixture.hw1_500LOCInterface8Method0(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals((short) 0, result);
	}

	/**
	 * Run the String hw1_500LOCInterface8Method1(int,char,long,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOCInterface8Method1_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		int var0 = 1;
		char var1 = '';
		long var2 = 1L;
		int var3 = 1;

		String result = fixture.hw1_500LOCInterface8Method1(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertNotNull(result);
	}

	/**
	 * Run the long hw1_500LOCInterface9Method2(float,byte,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOCInterface9Method2_1()
		throws Exception {
		hw1_500LOC27 fixture = new hw1_500LOC27();
		fixture.f1 = (short) 1;
		fixture.f1 = new hw1_500LOC17();
		float var0 = 1.0f;
		byte var1 = (byte) 1;
		short var2 = (short) 1;

		long result = fixture.hw1_500LOCInterface9Method2(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set short field test.hw1_500LOC27.f1 to test.hw1_500LOC17
		assertEquals(0L, result);
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

		hw1_500LOC27.main(args);

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

		hw1_500LOC27.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

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
		new org.junit.runner.JUnitCore().run(hw1_500LOC27Test.class);
	}
}