package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOC22Test</code> contains tests for the class <code>{@link hw1_500LOC22}</code>.
 *
 * @generatedBy CodePro at 3/28/14 11:00 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOC22Test {
	/**
	 * Run the double hw1_500LOC15method11(double,long,double,short,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method11_1()
		throws Exception {
		double var0 = 1.0;
		long var1 = 1L;
		double var2 = 1.0;
		short var3 = (short) 1;
		float var4 = 1.0f;

		double result = hw1_500LOC22.hw1_500LOC15method11(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the int hw1_500LOC15method17(short,double,String,char,float,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method17_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		short var0 = (short) 1;
		double var1 = 1.0;
		String var2 = "";
		char var3 = '';
		float var4 = 1.0f;
		int var5 = 1;

		int result = fixture.hw1_500LOC15method17(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertEquals(0, result);
	}

	/**
	 * Run the int hw1_500LOC15method2(long,String,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method2_1()
		throws Exception {
		long var0 = 1L;
		String var1 = "";
		double var2 = 1.0;

		int result = hw1_500LOC22.hw1_500LOC15method2(var0, var1, var2);

		// add additional test code here
		assertEquals(76, result);
	}

	/**
	 * Run the int hw1_500LOC15method24(String,double,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method24_1()
		throws Exception {
		String var0 = "";
		double var1 = 1.0;
		byte var2 = (byte) 1;

		int result = hw1_500LOC22.hw1_500LOC15method24(var0, var1, var2);

		// add additional test code here
		assertEquals(88, result);
	}

	/**
	 * Run the char hw1_500LOC15method26(short,int,long,long,hw1_500LOC33,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method26_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		short var0 = (short) 1;
		int var1 = 1;
		long var2 = 1L;
		long var3 = 1L;
		hw1_500LOC33 var4 = new hw1_500LOC33();
		String var5 = "";

		char result = fixture.hw1_500LOC15method26(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertEquals(' ', result);
	}

	/**
	 * Run the short hw1_500LOC15method29(hw1_500LOC28,String,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method29_1()
		throws Exception {
		hw1_500LOC28 var0 = new hw1_500LOC28();
		String var1 = "";
		String var2 = "";

		short result = hw1_500LOC22.hw1_500LOC15method29(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 20363, result);
	}

	/**
	 * Run the long hw1_500LOC15method3(hw1_500LOC0,double,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method3_1()
		throws Exception {
		hw1_500LOC0 var0 = new hw1_500LOC0();
		double var1 = 1.0;
		char var2 = '';

		long result = hw1_500LOC22.hw1_500LOC15method3(var0, var1, var2);

		// add additional test code here
		assertEquals(19L, result);
	}

	/**
	 * Run the long hw1_500LOC15method31(long,float,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method31_1()
		throws Exception {
		long var0 = 1L;
		float var1 = 1.0f;
		char var2 = '';

		long result = hw1_500LOC22.hw1_500LOC15method31(var0, var1, var2);

		// add additional test code here
		assertEquals(1L, result);
	}

	/**
	 * Run the Object hw1_500LOC15method32(double,int,short,String,float,int,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method32_1()
		throws Exception {
		double var0 = 1.0;
		int var1 = 1;
		short var2 = (short) 1;
		String var3 = "";
		float var4 = 1.0f;
		int var5 = 1;
		String var6 = "";

		Object result = hw1_500LOC22.hw1_500LOC15method32(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals(null, result);
	}

	/**
	 * Run the byte hw1_500LOC15method34(long,double,hw1_500LOC21,int,float,byte,hw1_500LOC32,String,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
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

		byte result = hw1_500LOC22.hw1_500LOC15method34(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals((byte) 1, result);
	}

	/**
	 * Run the short hw1_500LOC15method4(long,short,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method4_1()
		throws Exception {
		long var0 = 1L;
		short var1 = (short) 1;
		String var2 = "";

		short result = hw1_500LOC22.hw1_500LOC15method4(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the byte hw1_500LOC22method0(char,int,int,hw1_500LOC28) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method0_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		char var0 = '';
		int var1 = 1;
		int var2 = 1;
		hw1_500LOC28 var3 = new hw1_500LOC28();

		byte result = fixture.hw1_500LOC22method0(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the byte hw1_500LOC22method1(double,double,hw1_500LOC11) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method1_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		double var0 = 1.0;
		double var1 = 1.0;
		hw1_500LOC11 var2 = new hw1_500LOC11();

		byte result = fixture.hw1_500LOC22method1(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the double hw1_500LOC22method10(String,byte,char,char,short,int,char,short,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method10_1()
		throws Exception {
		String var0 = "";
		byte var1 = (byte) 1;
		char var2 = '';
		char var3 = '';
		short var4 = (short) 1;
		int var5 = 1;
		char var6 = '';
		short var7 = (short) 1;
		double var8 = 1.0;

		double result = hw1_500LOC22.hw1_500LOC22method10(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the double hw1_500LOC22method11(double,long,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method11_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		double var0 = 1.0;
		long var1 = 1L;
		char var2 = '';

		double result = fixture.hw1_500LOC22method11(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertEquals(0.0, result, 0.1);
	}

	/**
	 * Run the long hw1_500LOC22method13(float,int,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method13_1()
		throws Exception {
		float var0 = 1.0f;
		int var1 = 1;
		float var2 = 1.0f;

		long result = hw1_500LOC22.hw1_500LOC22method13(var0, var1, var2);

		// add additional test code here
		assertEquals(82L, result);
	}

	/**
	 * Run the float hw1_500LOC22method14(float,char,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method14_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		float var0 = 1.0f;
		char var1 = '';
		int var2 = 1;

		float result = fixture.hw1_500LOC22method14(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertEquals(0.0f, result, 0.1f);
	}

	/**
	 * Run the char hw1_500LOC22method15(String,char,short,hw1_500LOC31,String,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method15_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		String var0 = "";
		char var1 = '';
		short var2 = (short) 1;
		hw1_500LOC31 var3 = new hw1_500LOC31();
		String var4 = "";
		int var5 = 1;

		char result = fixture.hw1_500LOC22method15(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertEquals(' ', result);
	}

	/**
	 * Run the char hw1_500LOC22method16(hw1_500LOC20,hw1_500LOC19,long,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method16_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		hw1_500LOC20 var0 = new hw1_500LOC20();
		hw1_500LOC19 var1 = new hw1_500LOC19();
		long var2 = 1L;
		char var3 = '';

		char result = fixture.hw1_500LOC22method16(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertEquals(' ', result);
	}

	/**
	 * Run the long hw1_500LOC22method18(hw1_500LOC3,String,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method18_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		hw1_500LOC3 var0 = new hw1_500LOC3();
		String var1 = "";
		short var2 = (short) 1;

		long result = fixture.hw1_500LOC22method18(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertEquals(0L, result);
	}

	/**
	 * Run the Object hw1_500LOC22method19(char,long,hw1_500LOC4,short,double,short,long,String,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method19_1()
		throws Exception {
		char var0 = '';
		long var1 = 1L;
		hw1_500LOC4 var2 = new hw1_500LOC4();
		short var3 = (short) 1;
		double var4 = 1.0;
		short var5 = (short) 1;
		long var6 = 1L;
		String var7 = "";
		long var8 = 1L;

		Object result = hw1_500LOC22.hw1_500LOC22method19(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the float hw1_500LOC22method2(String,long,short,long,byte,double,byte,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method2_1()
		throws Exception {
		String var0 = "";
		long var1 = 1L;
		short var2 = (short) 1;
		long var3 = 1L;
		byte var4 = (byte) 1;
		double var5 = 1.0;
		byte var6 = (byte) 1;
		long var7 = 1L;

		float result = hw1_500LOC22.hw1_500LOC22method2(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(0.054429233f, result, 0.1f);
	}

	/**
	 * Run the Object hw1_500LOC22method21(float,double,hw1_500LOC25,byte,double,float,long,byte,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method21_1()
		throws Exception {
		float var0 = 1.0f;
		double var1 = 1.0;
		hw1_500LOC25 var2 = new hw1_500LOC25();
		byte var3 = (byte) 1;
		double var4 = 1.0;
		float var5 = 1.0f;
		long var6 = 1L;
		byte var7 = (byte) 1;
		double var8 = 1.0;

		Object result = hw1_500LOC22.hw1_500LOC22method21(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the float hw1_500LOC22method22(short,int,double,int,hw1_500LOC17) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method22_1()
		throws Exception {
		short var0 = (short) 1;
		int var1 = 1;
		double var2 = 1.0;
		int var3 = 1;
		hw1_500LOC17 var4 = new hw1_500LOC17();

		float result = hw1_500LOC22.hw1_500LOC22method22(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(0.4042567f, result, 0.1f);
	}

	/**
	 * Run the Object hw1_500LOC22method23(short,char,int,short,long,double,double,float,hw1_500LOC23) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
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

		Object result = hw1_500LOC22.hw1_500LOC22method23(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the Object hw1_500LOC22method25(short,hw1_500LOC11,hw1_500LOC29,byte,short,String,String,byte,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method25_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		short var0 = (short) 1;
		hw1_500LOC11 var1 = new hw1_500LOC11();
		hw1_500LOC29 var2 = new hw1_500LOC29();
		byte var3 = (byte) 1;
		short var4 = (short) 1;
		String var5 = "";
		String var6 = "";
		byte var7 = (byte) 1;
		byte var8 = (byte) 1;

		Object result = fixture.hw1_500LOC22method25(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertNotNull(result);
	}

	/**
	 * Run the byte hw1_500LOC22method26(int,String,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method26_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		int var0 = 1;
		String var1 = "";
		double var2 = 1.0;

		byte result = fixture.hw1_500LOC22method26(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the short hw1_500LOC22method28(hw1_500LOC13,short,short,float,String,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method28_1()
		throws Exception {
		hw1_500LOC13 var0 = new hw1_500LOC13();
		short var1 = (short) 1;
		short var2 = (short) 1;
		float var3 = 1.0f;
		String var4 = "";
		byte var5 = (byte) 1;

		short result = hw1_500LOC22.hw1_500LOC22method28(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the short hw1_500LOC22method29(int,short,hw1_500LOC5,int,int,long,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method29_1()
		throws Exception {
		int var0 = 1;
		short var1 = (short) 1;
		hw1_500LOC5 var2 = new hw1_500LOC5();
		int var3 = 1;
		int var4 = 1;
		long var5 = 1L;
		char var6 = '';

		short result = hw1_500LOC22.hw1_500LOC22method29(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the byte hw1_500LOC22method3(String,short,hw1_500LOC28,char,hw1_500LOC2,char,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method3_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		String var0 = "";
		short var1 = (short) 1;
		hw1_500LOC28 var2 = new hw1_500LOC28();
		char var3 = '';
		hw1_500LOC2 var4 = new hw1_500LOC2();
		char var5 = '';
		String var6 = "";

		byte result = fixture.hw1_500LOC22method3(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertEquals((byte) 0, result);
	}

	/**
	 * Run the Object hw1_500LOC22method31(double,byte,char,double,double,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method31_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		double var0 = 1.0;
		byte var1 = (byte) 1;
		char var2 = '';
		double var3 = 1.0;
		double var4 = 1.0;
		int var5 = 1;

		Object result = fixture.hw1_500LOC22method31(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertNotNull(result);
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

		double result = hw1_500LOC22.hw1_500LOC22method32(var0, var1, var2);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the long hw1_500LOC22method34(hw1_500LOC11,hw1_500LOC13,float,hw1_500LOC15,hw1_500LOC4) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method34_1()
		throws Exception {
		hw1_500LOC11 var0 = new hw1_500LOC11();
		hw1_500LOC13 var1 = new hw1_500LOC13();
		float var2 = 1.0f;
		hw1_500LOC15 var3 = new hw1_500LOC15();
		hw1_500LOC4 var4 = new hw1_500LOC4();

		long result = hw1_500LOC22.hw1_500LOC22method34(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(80L, result);
	}

	/**
	 * Run the short hw1_500LOC22method7(String,int,char,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method7_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		String var0 = "";
		int var1 = 1;
		char var2 = '';
		char var3 = '';

		short result = fixture.hw1_500LOC22method7(var0, var1, var2, var3);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertEquals((short) 0, result);
	}

	/**
	 * Run the String hw1_500LOC22method8(long,byte,hw1_500LOC24,int,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC22method8_1()
		throws Exception {
		long var0 = 1L;
		byte var1 = (byte) 1;
		hw1_500LOC24 var2 = new hw1_500LOC24();
		int var3 = 1;
		String var4 = "";

		String result = hw1_500LOC22.hw1_500LOC22method8(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals("", result);
	}

	/**
	 * Run the short hw1_500LOCInterface6Method0(hw1_500LOC17,float,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOCInterface6Method0_1()
		throws Exception {
		hw1_500LOC22 fixture = new hw1_500LOC22();
		fixture.f0 = new byte[] {};
		fixture.f1 = (short) 1;
		hw1_500LOC17 var0 = new hw1_500LOC17();
		float var1 = 1.0f;
		long var2 = 1L;

		short result = fixture.hw1_500LOCInterface6Method0(var0, var1, var2);

		// add additional test code here
		// An unexpected exception was thrown in user code while executing this test:
		//    java.lang.IllegalArgumentException: Can not set static float field test.hw1_500LOC22.f0 to [B
		assertEquals((short) 0, result);
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

		hw1_500LOC22.main(args);

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

		hw1_500LOC22.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

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
		new org.junit.runner.JUnitCore().run(hw1_500LOC22Test.class);
	}
}