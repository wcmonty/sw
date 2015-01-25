package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOC5Test</code> contains tests for the class <code>{@link hw1_500LOC5}</code>.
 *
 * @generatedBy CodePro at 3/28/14 11:00 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOC5Test {
	/**
	 * Run the hw1_500LOC5() constructor test.
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5_1()
		throws Exception {
		hw1_500LOC5 result = new hw1_500LOC5();
		assertNotNull(result);
		// add additional test code here
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
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		double var0 = 1.0;
		int var1 = 1;
		float var2 = 1.0f;
		String var3 = "";

		String result = fixture.hw1_500LOC33method0(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertNotNull(result);
	}

	/**
	 * Run the char hw1_500LOC33method17(hw1_500LOC15,float,hw1_500LOC28) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC33method17_1()
		throws Exception {
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		hw1_500LOC15 var0 = new hw1_500LOC15();
		float var1 = 1.0f;
		hw1_500LOC28 var2 = new hw1_500LOC28();

		char result = fixture.hw1_500LOC33method17(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals(' ', result);
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
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		String var0 = "";
		char var1 = '';
		char var2 = '';
		String var3 = "";

		double result = fixture.hw1_500LOC33method19(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
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

		byte result = hw1_500LOC5.hw1_500LOC33method2(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) 102, result);
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

		char result = hw1_500LOC5.hw1_500LOC33method25(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals('t', result);
	}

	/**
	 * Run the String hw1_500LOC33method28(char,hw1_500LOC34,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC33method28_1()
		throws Exception {
		char var0 = '';
		hw1_500LOC34 var1 = new hw1_500LOC34();
		String var2 = "";

		String result = hw1_500LOC5.hw1_500LOC33method28(var0, var1, var2);

		// add additional test code here
		assertEquals("", result);
	}

	/**
	 * Run the float hw1_500LOC33method33(hw1_500LOC0,short,int,int,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC33method33_1()
		throws Exception {
		hw1_500LOC0 var0 = new hw1_500LOC0();
		short var1 = (short) 1;
		int var2 = 1;
		int var3 = 1;
		char var4 = '';

		float result = hw1_500LOC5.hw1_500LOC33method33(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(0.9952241f, result, 0.1f);
	}

	/**
	 * Run the char hw1_500LOC33method6(int,byte,byte,short,long,String,double,hw1_500LOC23,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC33method6_1()
		throws Exception {
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		int var0 = 1;
		byte var1 = (byte) 1;
		byte var2 = (byte) 1;
		short var3 = (short) 1;
		long var4 = 1L;
		String var5 = "";
		double var6 = 1.0;
		hw1_500LOC23 var7 = new hw1_500LOC23();
		byte var8 = (byte) 1;

		char result = fixture.hw1_500LOC33method6(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals(' ', result);
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
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		short var0 = (short) 1;
		float var1 = 1.0f;
		int var2 = 1;

		String result = fixture.hw1_500LOC33method7(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertNotNull(result);
	}

	/**
	 * Run the String hw1_500LOC33method8(char,String,float,short,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC33method8_1()
		throws Exception {
		char var0 = '';
		String var1 = "";
		float var2 = 1.0f;
		short var3 = (short) 1;
		long var4 = 1L;

		String result = hw1_500LOC5.hw1_500LOC33method8(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals("", result);
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
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		int var0 = 1;
		hw1_500LOC10 var1 = new hw1_500LOC10();
		char var2 = '';

		char result = fixture.hw1_500LOC5method0(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals(' ', result);
	}

	/**
	 * Run the int hw1_500LOC5method1(String,char,byte,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method1_1()
		throws Exception {
		String var0 = "";
		char var1 = '';
		byte var2 = (byte) 1;
		double var3 = 1.0;

		int result = hw1_500LOC5.hw1_500LOC5method1(var0, var1, var2, var3);

		// add additional test code here
		assertEquals(25, result);
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
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
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
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the short hw1_500LOC5method11(int,hw1_500LOC20,short,String,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method11_1()
		throws Exception {
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		int var0 = 1;
		hw1_500LOC20 var1 = new hw1_500LOC20();
		short var2 = (short) 1;
		String var3 = "";
		double var4 = 1.0;

		short result = fixture.hw1_500LOC5method11(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals((short) 0, result);
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

		long result = hw1_500LOC5.hw1_500LOC5method13(var0, var1, var2, var3, var4, var5, var6, var7);

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
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		int var0 = 1;
		short var1 = (short) 1;
		char var2 = '';
		hw1_500LOC13 var3 = new hw1_500LOC13();
		char var4 = '';

		float result = fixture.hw1_500LOC5method14(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the Object hw1_500LOC5method15(long,int,int,double,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method15_1()
		throws Exception {
		long var0 = 1L;
		int var1 = 1;
		int var2 = 1;
		double var3 = 1.0;
		String var4 = "";

		Object result = hw1_500LOC5.hw1_500LOC5method15(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(null, result);
	}

	/**
	 * Run the long hw1_500LOC5method16(short,float,byte,char,short,float,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method16_1()
		throws Exception {
		short var0 = (short) 1;
		float var1 = 1.0f;
		byte var2 = (byte) 1;
		char var3 = '';
		short var4 = (short) 1;
		float var5 = 1.0f;
		short var6 = (short) 1;

		long result = hw1_500LOC5.hw1_500LOC5method16(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals(76L, result);
	}

	/**
	 * Run the byte hw1_500LOC5method18(int,short,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method18_1()
		throws Exception {
		int var0 = 1;
		short var1 = (short) 1;
		String var2 = "";

		byte result = hw1_500LOC5.hw1_500LOC5method18(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) -23, result);
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

		Object result = hw1_500LOC5.hw1_500LOC5method19(var0, var1, var2, var3, var4, var5, var6, var7);

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
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		hw1_500LOC29 var0 = new hw1_500LOC29();
		double var1 = 1.0;
		String var2 = "";

		char result = fixture.hw1_500LOC5method2(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals(' ', result);
	}

	/**
	 * Run the long hw1_500LOC5method20(hw1_500LOC9,float,long,hw1_500LOC29,int,long,long,hw1_500LOC30,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method20_1()
		throws Exception {
		hw1_500LOC9 var0 = new hw1_500LOC9();
		float var1 = 1.0f;
		long var2 = 1L;
		hw1_500LOC29 var3 = new hw1_500LOC29();
		int var4 = 1;
		long var5 = 1L;
		long var6 = 1L;
		hw1_500LOC30 var7 = new hw1_500LOC30();
		char var8 = '';

		long result = hw1_500LOC5.hw1_500LOC5method20(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals(1L, result);
	}

	/**
	 * Run the float hw1_500LOC5method22(float,char,float,int,hw1_500LOC27,float,float,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method22_1()
		throws Exception {
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		float var0 = 1.0f;
		char var1 = '';
		float var2 = 1.0f;
		int var3 = 1;
		hw1_500LOC27 var4 = new hw1_500LOC27();
		float var5 = 1.0f;
		float var6 = 1.0f;
		long var7 = 1L;

		float result = fixture.hw1_500LOC5method22(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the char hw1_500LOC5method23(hw1_500LOC13,float,float,double,String,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method23_1()
		throws Exception {
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		hw1_500LOC13 var0 = new hw1_500LOC13();
		float var1 = 1.0f;
		float var2 = 1.0f;
		double var3 = 1.0;
		String var4 = "";
		double var5 = 1.0;

		char result = fixture.hw1_500LOC5method23(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals(' ', result);
	}

	/**
	 * Run the byte hw1_500LOC5method24(short,hw1_500LOC7,double,hw1_500LOC6,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method24_1()
		throws Exception {
		short var0 = (short) 1;
		hw1_500LOC7 var1 = new hw1_500LOC7();
		double var2 = 1.0;
		hw1_500LOC6 var3 = new hw1_500LOC6();
		double var4 = 1.0;

		byte result = hw1_500LOC5.hw1_500LOC5method24(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals((byte) -17, result);
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
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
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
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
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
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		float var0 = 1.0f;
		char var1 = '';
		byte var2 = (byte) 1;

		int result = fixture.hw1_500LOC5method27(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals(0, result);
	}

	/**
	 * Run the int hw1_500LOC5method29(String,char,hw1_500LOC3,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method29_1()
		throws Exception {
		String var0 = "";
		char var1 = '';
		hw1_500LOC3 var2 = new hw1_500LOC3();
		String var3 = "";

		int result = hw1_500LOC5.hw1_500LOC5method29(var0, var1, var2, var3);

		// add additional test code here
		assertEquals(21, result);
	}

	/**
	 * Run the Object hw1_500LOC5method3(int,String,long,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method3_1()
		throws Exception {
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		int var0 = 1;
		String var1 = "";
		long var2 = 1L;
		int var3 = 1;

		Object result = fixture.hw1_500LOC5method3(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertNotNull(result);
	}

	/**
	 * Run the double hw1_500LOC5method30(hw1_500LOC25,short,char,short,float,String,short,hw1_500LOC32) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method30_1()
		throws Exception {
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		hw1_500LOC25 var0 = new hw1_500LOC25();
		short var1 = (short) 1;
		char var2 = '';
		short var3 = (short) 1;
		float var4 = 1.0f;
		String var5 = "";
		short var6 = (short) 1;
		hw1_500LOC32 var7 = new hw1_500LOC32();

		double result = fixture.hw1_500LOC5method30(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals(0.0, result, 0.1);
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

		short result = hw1_500LOC5.hw1_500LOC5method32(var0, var1, var2);

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
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		int var0 = 1;
		byte var1 = (byte) 1;
		float var2 = 1.0f;

		byte result = fixture.hw1_500LOC5method33(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the float hw1_500LOC5method34(int,byte,long,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method34_1()
		throws Exception {
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		int var0 = 1;
		byte var1 = (byte) 1;
		long var2 = 1L;
		double var3 = 1.0;

		float result = fixture.hw1_500LOC5method34(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the long hw1_500LOC5method7(double,int,byte,byte,float,byte,byte,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method7_1()
		throws Exception {
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		double var0 = 1.0;
		int var1 = 1;
		byte var2 = (byte) 1;
		byte var3 = (byte) 1;
		float var4 = 1.0f;
		byte var5 = (byte) 1;
		byte var6 = (byte) 1;
		float var7 = 1.0f;

		long result = fixture.hw1_500LOC5method7(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals(0L, result);
	}

	/**
	 * Run the byte hw1_500LOC5method8(String,hw1_500LOC6,hw1_500LOC17,hw1_500LOC13) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC5method8_1()
		throws Exception {
		String var0 = "";
		hw1_500LOC6 var1 = new hw1_500LOC6();
		hw1_500LOC17 var2 = new hw1_500LOC17();
		hw1_500LOC13 var3 = new hw1_500LOC13();

		byte result = hw1_500LOC5.hw1_500LOC5method8(var0, var1, var2, var3);

		// add additional test code here
		assertEquals((byte) -39, result);
	}

	/**
	 * Run the short hw1_500LOCInterface7Method0(double,String,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOCInterface7Method0_1()
		throws Exception {
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		double var0 = 1.0;
		String var1 = "";
		float var2 = 1.0f;

		short result = fixture.hw1_500LOCInterface7Method0(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
		assertEquals((short) 0, result);
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
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		int var0 = 1;
		byte var1 = (byte) 1;
		double var2 = 1.0;
		long var3 = 1L;
		int var4 = 1;
		short var5 = (short) 1;

		long result = fixture.hw1_500LOCInterface7Method1(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
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
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
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
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
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
		hw1_500LOC5 fixture = new hw1_500LOC5();
		fixture.f0 = new long[] {};
		fixture.f1 = new int[] {};
		double var0 = 1.0;
		short var1 = (short) 1;
		hw1_500LOC31 var2 = new hw1_500LOC31();
		long var3 = 1L;
		byte var4 = (byte) 1;

		String result = fixture.hw1_500LOCInterface7Method3(var0, var1, var2, var3, var4);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static char field test.hw1_500LOC5.f1 to [I
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

		hw1_500LOC5.main(args);

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

		hw1_500LOC5.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

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
		new org.junit.runner.JUnitCore().run(hw1_500LOC5Test.class);
	}
}