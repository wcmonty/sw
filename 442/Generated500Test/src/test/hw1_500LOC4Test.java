package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOC4Test</code> contains tests for the class <code>{@link hw1_500LOC4}</code>.
 *
 * @generatedBy CodePro at 3/28/14 10:59 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOC4Test {
	/**
	 * Run the hw1_500LOC4() constructor test.
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4_1()
		throws Exception {
		hw1_500LOC4 result = new hw1_500LOC4();
		assertNotNull(result);
		// add additional test code here
	}

	/**
	 * Run the char hw1_500LOC15method26(short,int,long,long,hw1_500LOC33,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC15method26_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		short var0 = (short) 1;
		int var1 = 1;
		long var2 = 1L;
		long var3 = 1L;
		hw1_500LOC33 var4 = new hw1_500LOC33();
		String var5 = "";

		char result = fixture.hw1_500LOC15method26(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals(' ', result);
	}

	/**
	 * Run the byte hw1_500LOC15method34(long,double,hw1_500LOC21,int,float,byte,hw1_500LOC32,String,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC15method34_1()
		throws Exception {
		long var0 = 1L;
		double var1 = 1.0;
		hw1_500LOC21 var2 = new hw1_500LOC21();
		int var3 = 1;
		float var4 = 1.0f;
		byte var5 = (byte) 1;
		hw1_500LOC32 var6 = new hw1_500LOC32();
		String var7 = "";
		short var8 = (short) 1;

		byte result = hw1_500LOC4.hw1_500LOC15method34(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals((byte) 1, result);
	}

	/**
	 * Run the short hw1_500LOC15method4(long,short,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC15method4_1()
		throws Exception {
		long var0 = 1L;
		short var1 = (short) 1;
		String var2 = "";

		short result = hw1_500LOC4.hw1_500LOC15method4(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the byte hw1_500LOC22method0(char,int,int,hw1_500LOC28) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC22method0_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		char var0 = '';
		int var1 = 1;
		int var2 = 1;
		hw1_500LOC28 var3 = new hw1_500LOC28();

		byte result = fixture.hw1_500LOC22method0(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the byte hw1_500LOC22method1(double,double,hw1_500LOC11) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC22method1_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		double var0 = 1.0;
		double var1 = 1.0;
		hw1_500LOC11 var2 = new hw1_500LOC11();

		byte result = fixture.hw1_500LOC22method1(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the long hw1_500LOC22method18(hw1_500LOC3,String,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC22method18_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		hw1_500LOC3 var0 = new hw1_500LOC3();
		String var1 = "";
		short var2 = (short) 1;

		long result = fixture.hw1_500LOC22method18(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals(0L, result);
	}

	/**
	 * Run the Object hw1_500LOC22method23(short,char,int,short,long,double,double,float,hw1_500LOC23) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC22method23_1()
		throws Exception {
		short var0 = (short) 1;
		char var1 = '';
		int var2 = 1;
		short var3 = (short) 1;
		long var4 = 1L;
		double var5 = 1.0;
		double var6 = 1.0;
		float var7 = 1.0f;
		hw1_500LOC23 var8 = new hw1_500LOC23();

		Object result = hw1_500LOC4.hw1_500LOC22method23(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the double hw1_500LOC22method32(double,float,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC22method32_1()
		throws Exception {
		double var0 = 1.0;
		float var1 = 1.0f;
		int var2 = 1;

		double result = hw1_500LOC4.hw1_500LOC22method32(var0, var1, var2);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the long hw1_500LOC22method34(hw1_500LOC11,hw1_500LOC13,float,hw1_500LOC15,hw1_500LOC4) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC22method34_1()
		throws Exception {
		hw1_500LOC11 var0 = new hw1_500LOC11();
		hw1_500LOC13 var1 = new hw1_500LOC13();
		float var2 = 1.0f;
		hw1_500LOC15 var3 = new hw1_500LOC15();
		hw1_500LOC4 var4 = new hw1_500LOC4();

		long result = hw1_500LOC4.hw1_500LOC22method34(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(35L, result);
	}

	/**
	 * Run the short hw1_500LOC22method7(String,int,char,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC22method7_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		String var0 = "";
		int var1 = 1;
		char var2 = '';
		char var3 = '';

		short result = fixture.hw1_500LOC22method7(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals((short) 0, result);
	}

	/**
	 * Run the Object hw1_500LOC4method0(byte,byte,hw1_500LOC15,String,String,float,double,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method0_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		byte var0 = (byte) 1;
		byte var1 = (byte) 1;
		hw1_500LOC15 var2 = new hw1_500LOC15();
		String var3 = "";
		String var4 = "";
		float var5 = 1.0f;
		double var6 = 1.0;
		String var7 = "";

		Object result = fixture.hw1_500LOC4method0(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertNotNull(result);
	}

	/**
	 * Run the String hw1_500LOC4method1(long,double,long,String,long,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method1_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		long var0 = 1L;
		double var1 = 1.0;
		long var2 = 1L;
		String var3 = "";
		long var4 = 1L;
		double var5 = 1.0;

		String result = fixture.hw1_500LOC4method1(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertNotNull(result);
	}

	/**
	 * Run the int hw1_500LOC4method10(float,short,int,hw1_500LOC0,float,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method10_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		float var0 = 1.0f;
		short var1 = (short) 1;
		int var2 = 1;
		hw1_500LOC0 var3 = new hw1_500LOC0();
		float var4 = 1.0f;
		String var5 = "";

		int result = fixture.hw1_500LOC4method10(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals(0, result);
	}

	/**
	 * Run the float hw1_500LOC4method11(int,hw1_500LOC22,long,String,short,float,hw1_500LOC23,byte,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method11_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		int var0 = 1;
		hw1_500LOC22 var1 = new hw1_500LOC22();
		long var2 = 1L;
		String var3 = "";
		short var4 = (short) 1;
		float var5 = 1.0f;
		hw1_500LOC23 var6 = new hw1_500LOC23();
		byte var7 = (byte) 1;
		double var8 = 1.0;

		float result = fixture.hw1_500LOC4method11(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the double hw1_500LOC4method13(float,String,hw1_500LOC14) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method13_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		float var0 = 1.0f;
		String var1 = "";
		hw1_500LOC14 var2 = new hw1_500LOC14();

		double result = fixture.hw1_500LOC4method13(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the int hw1_500LOC4method14(int,float,String,hw1_500LOC31,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method14_1()
		throws Exception {
		int var0 = 1;
		float var1 = 1.0f;
		String var2 = "";
		hw1_500LOC31 var3 = new hw1_500LOC31();
		String var4 = "";

		int result = hw1_500LOC4.hw1_500LOC4method14(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the Object hw1_500LOC4method15(String,long,float,long,long,hw1_500LOC14,int,short,hw1_500LOC14) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method15_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		String var0 = "";
		long var1 = 1L;
		float var2 = 1.0f;
		long var3 = 1L;
		long var4 = 1L;
		hw1_500LOC14 var5 = new hw1_500LOC14();
		int var6 = 1;
		short var7 = (short) 1;
		hw1_500LOC14 var8 = new hw1_500LOC14();

		Object result = fixture.hw1_500LOC4method15(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertNotNull(result);
	}

	/**
	 * Run the char hw1_500LOC4method16(byte,long,short,String,hw1_500LOC2,byte,byte,byte,hw1_500LOC24) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method16_1()
		throws Exception {
		byte var0 = (byte) 1;
		long var1 = 1L;
		short var2 = (short) 1;
		String var3 = "";
		hw1_500LOC2 var4 = new hw1_500LOC2();
		byte var5 = (byte) 1;
		byte var6 = (byte) 1;
		byte var7 = (byte) 1;
		hw1_500LOC24 var8 = new hw1_500LOC24();

		char result = hw1_500LOC4.hw1_500LOC4method16(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals('r', result);
	}

	/**
	 * Run the float hw1_500LOC4method18(short,long,long,long,hw1_500LOC32,String,char,hw1_500LOC25) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method18_1()
		throws Exception {
		short var0 = (short) 1;
		long var1 = 1L;
		long var2 = 1L;
		long var3 = 1L;
		hw1_500LOC32 var4 = new hw1_500LOC32();
		String var5 = "";
		char var6 = '';
		hw1_500LOC25 var7 = new hw1_500LOC25();

		float result = hw1_500LOC4.hw1_500LOC4method18(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(0.26136345f, result, 0.1f);
	}

	/**
	 * Run the float hw1_500LOC4method19(short,char,byte,float,byte,double,String,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method19_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		short var0 = (short) 1;
		char var1 = '';
		byte var2 = (byte) 1;
		float var3 = 1.0f;
		byte var4 = (byte) 1;
		double var5 = 1.0;
		String var6 = "";
		float var7 = 1.0f;

		float result = fixture.hw1_500LOC4method19(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the float hw1_500LOC4method2(short,double,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method2_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		short var0 = (short) 1;
		double var1 = 1.0;
		String var2 = "";

		float result = fixture.hw1_500LOC4method2(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the int hw1_500LOC4method20(hw1_500LOC24,long,hw1_500LOC28) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method20_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		hw1_500LOC24 var0 = new hw1_500LOC24();
		long var1 = 1L;
		hw1_500LOC28 var2 = new hw1_500LOC28();

		int result = fixture.hw1_500LOC4method20(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals(0, result);
	}

	/**
	 * Run the byte hw1_500LOC4method22(double,char,long,int,String,char,long,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method22_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		double var0 = 1.0;
		char var1 = '';
		long var2 = 1L;
		int var3 = 1;
		String var4 = "";
		char var5 = '';
		long var6 = 1L;
		short var7 = (short) 1;

		byte result = fixture.hw1_500LOC4method22(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the double hw1_500LOC4method23(byte,String,hw1_500LOC17) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method23_1()
		throws Exception {
		byte var0 = (byte) 1;
		String var1 = "";
		hw1_500LOC17 var2 = new hw1_500LOC17();

		double result = hw1_500LOC4.hw1_500LOC4method23(var0, var1, var2);

		// add additional test code here
		assertEquals(0.04847654817383995, result, 0.1);
	}

	/**
	 * Run the double hw1_500LOC4method24(float,double,byte,hw1_500LOC3,double,char,String,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method24_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		float var0 = 1.0f;
		double var1 = 1.0;
		byte var2 = (byte) 1;
		hw1_500LOC3 var3 = new hw1_500LOC3();
		double var4 = 1.0;
		char var5 = '';
		String var6 = "";
		int var7 = 1;

		double result = fixture.hw1_500LOC4method24(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the byte hw1_500LOC4method26(int,double,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method26_1()
		throws Exception {
		int var0 = 1;
		double var1 = 1.0;
		byte var2 = (byte) 1;

		byte result = hw1_500LOC4.hw1_500LOC4method26(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) 1, result);
	}

	/**
	 * Run the int hw1_500LOC4method27(char,char,hw1_500LOC29,float,long,short,float,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method27_1()
		throws Exception {
		char var0 = '';
		char var1 = '';
		hw1_500LOC29 var2 = new hw1_500LOC29();
		float var3 = 1.0f;
		long var4 = 1L;
		short var5 = (short) 1;
		float var6 = 1.0f;
		double var7 = 1.0;

		int result = hw1_500LOC4.hw1_500LOC4method27(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(43, result);
	}

	/**
	 * Run the String hw1_500LOC4method29(double,int,short,String,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method29_1()
		throws Exception {
		double var0 = 1.0;
		int var1 = 1;
		short var2 = (short) 1;
		String var3 = "";
		byte var4 = (byte) 1;

		String result = hw1_500LOC4.hw1_500LOC4method29(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals("", result);
	}

	/**
	 * Run the short hw1_500LOC4method3(short,float,char,hw1_500LOC27,float,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method3_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		short var0 = (short) 1;
		float var1 = 1.0f;
		char var2 = '';
		hw1_500LOC27 var3 = new hw1_500LOC27();
		float var4 = 1.0f;
		short var5 = (short) 1;

		short result = fixture.hw1_500LOC4method3(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals((short) 0, result);
	}

	/**
	 * Run the char hw1_500LOC4method30(double,int,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method30_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		double var0 = 1.0;
		int var1 = 1;
		short var2 = (short) 1;

		char result = fixture.hw1_500LOC4method30(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals(' ', result);
	}

	/**
	 * Run the int hw1_500LOC4method32(String,long,double,byte,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method32_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		String var0 = "";
		long var1 = 1L;
		double var2 = 1.0;
		byte var3 = (byte) 1;
		String var4 = "";

		int result = fixture.hw1_500LOC4method32(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals(0, result);
	}

	/**
	 * Run the byte hw1_500LOC4method33(char,long,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method33_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		char var0 = '';
		long var1 = 1L;
		short var2 = (short) 1;

		byte result = fixture.hw1_500LOC4method33(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the String hw1_500LOC4method34(long,String,hw1_500LOC28) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method34_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		long var0 = 1L;
		String var1 = "";
		hw1_500LOC28 var2 = new hw1_500LOC28();

		String result = fixture.hw1_500LOC4method34(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertNotNull(result);
	}

	/**
	 * Run the float hw1_500LOC4method7(int,hw1_500LOC24,hw1_500LOC4,byte,short,char,long,float,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method7_1()
		throws Exception {
		hw1_500LOC4 fixture = new hw1_500LOC4();
		fixture.f1 = (short) 1;
		fixture.f1 = new double[] {};
		fixture.f0 = new byte[] {};
		int var0 = 1;
		hw1_500LOC24 var1 = new hw1_500LOC24();
		hw1_500LOC4 var2 = new hw1_500LOC4();
		byte var3 = (byte) 1;
		short var4 = (short) 1;
		char var5 = '';
		long var6 = 1L;
		float var7 = 1.0f;
		String var8 = "";

		float result = fixture.hw1_500LOC4method7(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set [D field test.hw1_500LOC4.f1 to java.lang.Short
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the char hw1_500LOC4method8(char,char,String,char,int,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 10:59 PM
	 */
	@Test
	public void testHw1_500LOC4method8_1()
		throws Exception {
		char var0 = '';
		char var1 = '';
		String var2 = "";
		char var3 = '';
		int var4 = 1;
		double var5 = 1.0;

		char result = hw1_500LOC4.hw1_500LOC4method8(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals('', result);
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

		hw1_500LOC4.main(args);

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

		hw1_500LOC4.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

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
		new org.junit.runner.JUnitCore().run(hw1_500LOC4Test.class);
	}
}