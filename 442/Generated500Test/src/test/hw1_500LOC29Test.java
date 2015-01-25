package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOC29Test</code> contains tests for the class <code>{@link hw1_500LOC29}</code>.
 *
 * @generatedBy CodePro at 3/28/14 11:00 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOC29Test {
	/**
	 * Run the hw1_500LOC29() constructor test.
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29_1()
		throws Exception {
		hw1_500LOC29 result = new hw1_500LOC29();
		assertNotNull(result);
		// add additional test code here
	}

	/**
	 * Run the double hw1_500LOC22method32(double,float,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method32_1()
		throws Exception {
		double var0 = 1.0;
		float var1 = 1.0f;
		int var2 = 1;

		double result = hw1_500LOC29.hw1_500LOC22method32(var0, var1, var2);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the short hw1_500LOC29method1(float,short,byte,hw1_500LOC25) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method1_1()
		throws Exception {
		float var0 = 1.0f;
		short var1 = (short) 1;
		byte var2 = (byte) 1;
		hw1_500LOC25 var3 = new hw1_500LOC25();

		short result = hw1_500LOC29.hw1_500LOC29method1(var0, var1, var2, var3);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the long hw1_500LOC29method12(float,hw1_500LOC30,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method12_1()
		throws Exception {
		float var0 = 1.0f;
		hw1_500LOC30 var1 = new hw1_500LOC30();
		short var2 = (short) 1;

		long result = hw1_500LOC29.hw1_500LOC29method12(var0, var1, var2);

		// add additional test code here
		assertEquals(71L, result);
	}

	/**
	 * Run the short hw1_500LOC29method13(long,int,String,int,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method13_1()
		throws Exception {
		long var0 = 1L;
		int var1 = 1;
		String var2 = "";
		int var3 = 1;
		double var4 = 1.0;

		short result = hw1_500LOC29.hw1_500LOC29method13(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals((short) 16353, result);
	}

	/**
	 * Run the char hw1_500LOC29method19(long,float,String,byte,char,byte,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method19_1()
		throws Exception {
		long var0 = 1L;
		float var1 = 1.0f;
		String var2 = "";
		byte var3 = (byte) 1;
		char var4 = '';
		byte var5 = (byte) 1;
		char var6 = '';

		char result = hw1_500LOC29.hw1_500LOC29method19(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals('', result);
	}

	/**
	 * Run the float hw1_500LOC29method2(double,long,byte,short,byte,short,float,hw1_500LOC18) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method2_1()
		throws Exception {
		double var0 = 1.0;
		long var1 = 1L;
		byte var2 = (byte) 1;
		short var3 = (short) 1;
		byte var4 = (byte) 1;
		short var5 = (short) 1;
		float var6 = 1.0f;
		hw1_500LOC18 var7 = new hw1_500LOC18();

		float result = hw1_500LOC29.hw1_500LOC29method2(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the int hw1_500LOC29method20(hw1_500LOC9,long,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method20_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		hw1_500LOC9 var0 = new hw1_500LOC9();
		long var1 = 1L;
		double var2 = 1.0;

		int result = fixture.hw1_500LOC29method20(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals(0, result);
	}

	/**
	 * Run the Object hw1_500LOC29method22(short,char,long,int,char,long,char,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method22_1()
		throws Exception {
		short var0 = (short) 1;
		char var1 = '';
		long var2 = 1L;
		int var3 = 1;
		char var4 = '';
		long var5 = 1L;
		char var6 = '';
		float var7 = 1.0f;

		Object result = hw1_500LOC29.hw1_500LOC29method22(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(null, result);
	}

	/**
	 * Run the double hw1_500LOC29method23(byte,byte,short,String,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method23_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		byte var0 = (byte) 1;
		byte var1 = (byte) 1;
		short var2 = (short) 1;
		String var3 = "";
		char var4 = '';

		double result = fixture.hw1_500LOC29method23(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the double hw1_500LOC29method26(String,String,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method26_1()
		throws Exception {
		String var0 = "";
		String var1 = "";
		double var2 = 1.0;

		double result = hw1_500LOC29.hw1_500LOC29method26(var0, var1, var2);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the char hw1_500LOC29method27(double,int,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method27_1()
		throws Exception {
		double var0 = 1.0;
		int var1 = 1;
		float var2 = 1.0f;

		char result = hw1_500LOC29.hw1_500LOC29method27(var0, var1, var2);

		// add additional test code here
		assertEquals('h', result);
	}

	/**
	 * Run the byte hw1_500LOC29method29(double,int,hw1_500LOC15) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method29_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		double var0 = 1.0;
		int var1 = 1;
		hw1_500LOC15 var2 = new hw1_500LOC15();

		byte result = fixture.hw1_500LOC29method29(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the String hw1_500LOC29method3(float,long,String,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method3_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		float var0 = 1.0f;
		long var1 = 1L;
		String var2 = "";
		String var3 = "";

		String result = fixture.hw1_500LOC29method3(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertNotNull(result);
	}

	/**
	 * Run the float hw1_500LOC29method30(double,char,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method30_1()
		throws Exception {
		double var0 = 1.0;
		char var1 = '';
		long var2 = 1L;

		float result = hw1_500LOC29.hw1_500LOC29method30(var0, var1, var2);

		// add additional test code here
		assertEquals(0.08231598f, result, 0.1f);
	}

	/**
	 * Run the short hw1_500LOC29method33(int,int,hw1_500LOC27) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method33_1()
		throws Exception {
		int var0 = 1;
		int var1 = 1;
		hw1_500LOC27 var2 = new hw1_500LOC27();

		short result = hw1_500LOC29.hw1_500LOC29method33(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 17185, result);
	}

	/**
	 * Run the float hw1_500LOC29method35(String,long,String,short,float,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method35_1()
		throws Exception {
		String var0 = "";
		long var1 = 1L;
		String var2 = "";
		short var3 = (short) 1;
		float var4 = 1.0f;
		double var5 = 1.0;

		float result = hw1_500LOC29.hw1_500LOC29method35(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the float hw1_500LOC29method36(double,byte,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method36_1()
		throws Exception {
		double var0 = 1.0;
		byte var1 = (byte) 1;
		String var2 = "";

		float result = hw1_500LOC29.hw1_500LOC29method36(var0, var1, var2);

		// add additional test code here
		assertEquals(0.3893112f, result, 0.1f);
	}

	/**
	 * Run the Object hw1_500LOC29method37(hw1_500LOC22,byte,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method37_1()
		throws Exception {
		hw1_500LOC22 var0 = new hw1_500LOC22();
		byte var1 = (byte) 1;
		long var2 = 1L;

		Object result = hw1_500LOC29.hw1_500LOC29method37(var0, var1, var2);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the float hw1_500LOC29method38(short,char,char,float,float,String,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method38_1()
		throws Exception {
		short var0 = (short) 1;
		char var1 = '';
		char var2 = '';
		float var3 = 1.0f;
		float var4 = 1.0f;
		String var5 = "";
		long var6 = 1L;

		float result = hw1_500LOC29.hw1_500LOC29method38(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the byte hw1_500LOC29method39(String,hw1_500LOC0,int,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method39_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		String var0 = "";
		hw1_500LOC0 var1 = new hw1_500LOC0();
		int var2 = 1;
		int var3 = 1;

		byte result = fixture.hw1_500LOC29method39(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the char hw1_500LOC29method4(double,long,char,hw1_500LOC13,char,float,int,byte,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method4_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		double var0 = 1.0;
		long var1 = 1L;
		char var2 = '';
		hw1_500LOC13 var3 = new hw1_500LOC13();
		char var4 = '';
		float var5 = 1.0f;
		int var6 = 1;
		byte var7 = (byte) 1;
		byte var8 = (byte) 1;

		char result = fixture.hw1_500LOC29method4(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals(' ', result);
	}

	/**
	 * Run the Object hw1_500LOC29method40(hw1_500LOC34,long,double,String,char,short,short,char,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method40_1()
		throws Exception {
		hw1_500LOC34 var0 = new hw1_500LOC34();
		long var1 = 1L;
		double var2 = 1.0;
		String var3 = "";
		char var4 = '';
		short var5 = (short) 1;
		short var6 = (short) 1;
		char var7 = '';
		char var8 = '';

		Object result = hw1_500LOC29.hw1_500LOC29method40(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the long hw1_500LOC29method41(short,char,short,long,hw1_500LOC0,hw1_500LOC32,byte,char,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method41_1()
		throws Exception {
		short var0 = (short) 1;
		char var1 = '';
		short var2 = (short) 1;
		long var3 = 1L;
		hw1_500LOC0 var4 = new hw1_500LOC0();
		hw1_500LOC32 var5 = new hw1_500LOC32();
		byte var6 = (byte) 1;
		char var7 = '';
		short var8 = (short) 1;

		long result = hw1_500LOC29.hw1_500LOC29method41(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals(1L, result);
	}

	/**
	 * Run the short hw1_500LOC29method42(byte,char,hw1_500LOC33,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method42_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		byte var0 = (byte) 1;
		char var1 = '';
		hw1_500LOC33 var2 = new hw1_500LOC33();
		short var3 = (short) 1;

		short result = fixture.hw1_500LOC29method42(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals((short) 0, result);
	}

	/**
	 * Run the long hw1_500LOC29method43(double,short,hw1_500LOC34,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method43_1()
		throws Exception {
		double var0 = 1.0;
		short var1 = (short) 1;
		hw1_500LOC34 var2 = new hw1_500LOC34();
		byte var3 = (byte) 1;

		long result = hw1_500LOC29.hw1_500LOC29method43(var0, var1, var2, var3);

		// add additional test code here
		assertEquals(66L, result);
	}

	/**
	 * Run the long hw1_500LOC29method44(String,float,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method44_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		String var0 = "";
		float var1 = 1.0f;
		short var2 = (short) 1;

		long result = fixture.hw1_500LOC29method44(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals(0L, result);
	}

	/**
	 * Run the String hw1_500LOC29method5(double,float,String,int,byte,byte,long,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method5_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		double var0 = 1.0;
		float var1 = 1.0f;
		String var2 = "";
		int var3 = 1;
		byte var4 = (byte) 1;
		byte var5 = (byte) 1;
		long var6 = 1L;
		String var7 = "";

		String result = fixture.hw1_500LOC29method5(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertNotNull(result);
	}

	/**
	 * Run the int hw1_500LOC29method6(int,float,double,int,hw1_500LOC34) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method6_1()
		throws Exception {
		int var0 = 1;
		float var1 = 1.0f;
		double var2 = 1.0;
		int var3 = 1;
		hw1_500LOC34 var4 = new hw1_500LOC34();

		int result = hw1_500LOC29.hw1_500LOC29method6(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the int hw1_500LOC29method7(char,char,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method7_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		char var0 = '';
		char var1 = '';
		char var2 = '';

		int result = fixture.hw1_500LOC29method7(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals(0, result);
	}

	/**
	 * Run the long hw1_500LOC29method9(double,double,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC29method9_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		double var0 = 1.0;
		double var1 = 1.0;
		int var2 = 1;

		long result = fixture.hw1_500LOC29method9(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals(0L, result);
	}

	/**
	 * Run the Object hw1_500LOC2method0(short,double,char,short,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC2method0_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		short var0 = (short) 1;
		double var1 = 1.0;
		char var2 = '';
		short var3 = (short) 1;
		char var4 = '';

		Object result = fixture.hw1_500LOC2method0(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertNotNull(result);
	}

	/**
	 * Run the Object hw1_500LOC2method10(long,String,hw1_500LOC8) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC2method10_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		long var0 = 1L;
		String var1 = "";
		hw1_500LOC8 var2 = new hw1_500LOC8();

		Object result = fixture.hw1_500LOC2method10(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertNotNull(result);
	}

	/**
	 * Run the float hw1_500LOC2method11(double,byte,double,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC2method11_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		double var0 = 1.0;
		byte var1 = (byte) 1;
		double var2 = 1.0;
		char var3 = '';

		float result = fixture.hw1_500LOC2method11(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the int hw1_500LOC2method12(double,double,short,String,byte,hw1_500LOC15,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC2method12_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		double var0 = 1.0;
		double var1 = 1.0;
		short var2 = (short) 1;
		String var3 = "";
		byte var4 = (byte) 1;
		hw1_500LOC15 var5 = new hw1_500LOC15();
		int var6 = 1;

		int result = fixture.hw1_500LOC2method12(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals(0, result);
	}

	/**
	 * Run the Object hw1_500LOC2method14(long,char,int,hw1_500LOC26,float,float,float,String,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC2method14_1()
		throws Exception {
		long var0 = 1L;
		char var1 = '';
		int var2 = 1;
		hw1_500LOC26 var3 = new hw1_500LOC26();
		float var4 = 1.0f;
		float var5 = 1.0f;
		float var6 = 1.0f;
		String var7 = "";
		long var8 = 1L;

		Object result = hw1_500LOC29.hw1_500LOC2method14(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the long hw1_500LOC2method15(short,byte,double,long,byte,float,int,byte,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC2method15_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		short var0 = (short) 1;
		byte var1 = (byte) 1;
		double var2 = 1.0;
		long var3 = 1L;
		byte var4 = (byte) 1;
		float var5 = 1.0f;
		int var6 = 1;
		byte var7 = (byte) 1;
		int var8 = 1;

		long result = fixture.hw1_500LOC2method15(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals(0L, result);
	}

	/**
	 * Run the char hw1_500LOC2method7(byte,double,float,short,byte,byte,long,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC2method7_1()
		throws Exception {
		byte var0 = (byte) 1;
		double var1 = 1.0;
		float var2 = 1.0f;
		short var3 = (short) 1;
		byte var4 = (byte) 1;
		byte var5 = (byte) 1;
		long var6 = 1L;
		float var7 = 1.0f;

		char result = hw1_500LOC29.hw1_500LOC2method7(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals('f', result);
	}

	/**
	 * Run the byte hw1_500LOC2method8(byte,double,long,float,String,float,byte,double,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC2method8_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		byte var0 = (byte) 1;
		double var1 = 1.0;
		long var2 = 1L;
		float var3 = 1.0f;
		String var4 = "";
		float var5 = 1.0f;
		byte var6 = (byte) 1;
		double var7 = 1.0;
		double var8 = 1.0;

		byte result = fixture.hw1_500LOC2method8(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the Object hw1_500LOC2method9(char,String,float,double,int,int,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC2method9_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		char var0 = '';
		String var1 = "";
		float var2 = 1.0f;
		double var3 = 1.0;
		int var4 = 1;
		int var5 = 1;
		char var6 = '';

		Object result = fixture.hw1_500LOC2method9(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertNotNull(result);
	}

	/**
	 * Run the double hw1_500LOC4method13(float,String,hw1_500LOC14) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC4method13_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
		fixture.f0 = new byte[] {};
		float var0 = 1.0f;
		String var1 = "";
		hw1_500LOC14 var2 = new hw1_500LOC14();

		double result = fixture.hw1_500LOC4method13(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the Object hw1_500LOC4method15(String,long,float,long,long,hw1_500LOC14,int,short,hw1_500LOC14) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC4method15_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
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
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertNotNull(result);
	}

	/**
	 * Run the double hw1_500LOC4method24(float,double,byte,hw1_500LOC3,double,char,String,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC4method24_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
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
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the int hw1_500LOC4method27(char,char,hw1_500LOC29,float,long,short,float,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
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

		int result = hw1_500LOC29.hw1_500LOC4method27(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(38, result);
	}

	/**
	 * Run the short hw1_500LOC4method3(short,float,char,hw1_500LOC27,float,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC4method3_1()
		throws Exception {
		hw1_500LOC29 fixture = new hw1_500LOC29();
		fixture.f3 = 1.0;
		fixture.f1 = new double[] {};
		fixture.f1 = (short) 1;
		fixture.f2 = 1.0;
		fixture.f0 = "";
		fixture.f0 = new int[] {};
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
		//    java.lang.IllegalArgumentException: Can not set static [C field test.hw1_500LOC29.f1 to [D
		assertEquals((short) 0, result);
	}

	/**
	 * Run the char hw1_500LOC4method8(char,char,String,char,int,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
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

		char result = hw1_500LOC29.hw1_500LOC4method8(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals('', result);
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

		hw1_500LOC29.main(args);

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

		hw1_500LOC29.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

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
		new org.junit.runner.JUnitCore().run(hw1_500LOC29Test.class);
	}
}