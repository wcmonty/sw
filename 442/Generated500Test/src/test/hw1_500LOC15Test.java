package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOC15Test</code> contains tests for the class <code>{@link hw1_500LOC15}</code>.
 *
 * @generatedBy CodePro at 3/28/14 11:00 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOC15Test {
	/**
	 * Run the hw1_500LOC15() constructor test.
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15_1()
		throws Exception {
		hw1_500LOC15 result = new hw1_500LOC15();
		assertNotNull(result);
		// add additional test code here
	}

	/**
	 * Run the short hw1_500LOC15method0(double,long,hw1_500LOC4) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method0_1()
		throws Exception {
		double var0 = 1.0;
		long var1 = 1L;
		hw1_500LOC4 var2 = new hw1_500LOC4();

		short result = hw1_500LOC15.hw1_500LOC15method0(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 15871, result);
	}

	/**
	 * Run the long hw1_500LOC15method1(double,double,long,long,float,String,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method1_1()
		throws Exception {
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
		double var0 = 1.0;
		double var1 = 1.0;
		long var2 = 1L;
		long var3 = 1L;
		float var4 = 1.0f;
		String var5 = "";
		char var6 = '';

		long result = fixture.hw1_500LOC15method1(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals(1L, result);
	}

	/**
	 * Run the float hw1_500LOC15method10(hw1_500LOC28,String,int,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method10_1()
		throws Exception {
		hw1_500LOC28 var0 = new hw1_500LOC28();
		String var1 = "";
		int var2 = 1;
		short var3 = (short) 1;

		float result = hw1_500LOC15.hw1_500LOC15method10(var0, var1, var2, var3);

		// add additional test code here
		assertEquals(0.51528937f, result, 0.1f);
	}

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

		double result = hw1_500LOC15.hw1_500LOC15method11(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the byte hw1_500LOC15method12(int,String,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method12_1()
		throws Exception {
		int var0 = 1;
		String var1 = "";
		int var2 = 1;

		byte result = hw1_500LOC15.hw1_500LOC15method12(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) 123, result);
	}

	/**
	 * Run the short hw1_500LOC15method13(float,byte,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method13_1()
		throws Exception {
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
		float var0 = 1.0f;
		byte var1 = (byte) 1;
		double var2 = 1.0;

		short result = fixture.hw1_500LOC15method13(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 4194, result);
	}

	/**
	 * Run the float hw1_500LOC15method14(byte,float,char,short,float,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method14_1()
		throws Exception {
		byte var0 = (byte) 1;
		float var1 = 1.0f;
		char var2 = '';
		short var3 = (short) 1;
		float var4 = 1.0f;
		int var5 = 1;

		float result = hw1_500LOC15.hw1_500LOC15method14(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the short hw1_500LOC15method15(int,int,long,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method15_1()
		throws Exception {
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
		int var0 = 1;
		int var1 = 1;
		long var2 = 1L;
		double var3 = 1.0;

		short result = fixture.hw1_500LOC15method15(var0, var1, var2, var3);

		// add additional test code here
		assertEquals((short) 27022, result);
	}

	/**
	 * Run the Object hw1_500LOC15method16(float,float,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method16_1()
		throws Exception {
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
		float var0 = 1.0f;
		float var1 = 1.0f;
		short var2 = (short) 1;

		Object result = fixture.hw1_500LOC15method16(var0, var1, var2);

		// add additional test code here
		assertEquals(null, result);
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
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
		short var0 = (short) 1;
		double var1 = 1.0;
		String var2 = "";
		char var3 = '';
		float var4 = 1.0f;
		int var5 = 1;

		int result = fixture.hw1_500LOC15method17(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the int hw1_500LOC15method18(double,short,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method18_1()
		throws Exception {
		double var0 = 1.0;
		short var1 = (short) 1;
		char var2 = '';

		int result = hw1_500LOC15.hw1_500LOC15method18(var0, var1, var2);

		// add additional test code here
		assertEquals(76, result);
	}

	/**
	 * Run the Object hw1_500LOC15method19(float,short,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method19_1()
		throws Exception {
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
		float var0 = 1.0f;
		short var1 = (short) 1;
		long var2 = 1L;

		Object result = fixture.hw1_500LOC15method19(var0, var1, var2);

		// add additional test code here
		assertEquals(null, result);
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

		int result = hw1_500LOC15.hw1_500LOC15method2(var0, var1, var2);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the int hw1_500LOC15method20(String,short,long,byte,String,int,char,int,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method20_1()
		throws Exception {
		String var0 = "";
		short var1 = (short) 1;
		long var2 = 1L;
		byte var3 = (byte) 1;
		String var4 = "";
		int var5 = 1;
		char var6 = '';
		int var7 = 1;
		double var8 = 1.0;

		int result = hw1_500LOC15.hw1_500LOC15method20(var0, var1, var2, var3, var4, var5, var6, var7, var8);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the char hw1_500LOC15method21(long,hw1_500LOC33,short,String,short,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method21_1()
		throws Exception {
		long var0 = 1L;
		hw1_500LOC33 var1 = new hw1_500LOC33();
		short var2 = (short) 1;
		String var3 = "";
		short var4 = (short) 1;
		float var5 = 1.0f;

		char result = hw1_500LOC15.hw1_500LOC15method21(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals('e', result);
	}

	/**
	 * Run the int hw1_500LOC15method22(byte,hw1_500LOC22,short,char,int,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method22_1()
		throws Exception {
		byte var0 = (byte) 1;
		hw1_500LOC22 var1 = new hw1_500LOC22();
		short var2 = (short) 1;
		char var3 = '';
		int var4 = 1;
		int var5 = 1;

		int result = hw1_500LOC15.hw1_500LOC15method22(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the short hw1_500LOC15method23(char,long,char,String,int,String,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method23_1()
		throws Exception {
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
		char var0 = '';
		long var1 = 1L;
		char var2 = '';
		String var3 = "";
		int var4 = 1;
		String var5 = "";
		double var6 = 1.0;

		short result = fixture.hw1_500LOC15method23(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals((short) 13737, result);
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

		int result = hw1_500LOC15.hw1_500LOC15method24(var0, var1, var2);

		// add additional test code here
		assertEquals(60, result);
	}

	/**
	 * Run the float hw1_500LOC15method25(String,long,char,hw1_500LOC13,char,byte,byte,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method25_1()
		throws Exception {
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
		String var0 = "";
		long var1 = 1L;
		char var2 = '';
		hw1_500LOC13 var3 = new hw1_500LOC13();
		char var4 = '';
		byte var5 = (byte) 1;
		byte var6 = (byte) 1;
		long var7 = 1L;

		float result = fixture.hw1_500LOC15method25(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(0.41747332f, result, 0.1f);
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
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
		short var0 = (short) 1;
		int var1 = 1;
		long var2 = 1L;
		long var3 = 1L;
		hw1_500LOC33 var4 = new hw1_500LOC33();
		String var5 = "";

		char result = fixture.hw1_500LOC15method26(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals('h', result);
	}

	/**
	 * Run the short hw1_500LOC15method27(byte,String,long,long,float,int,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method27_1()
		throws Exception {
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
		byte var0 = (byte) 1;
		String var1 = "";
		long var2 = 1L;
		long var3 = 1L;
		float var4 = 1.0f;
		int var5 = 1;
		long var6 = 1L;

		short result = fixture.hw1_500LOC15method27(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals((short) 10663, result);
	}

	/**
	 * Run the short hw1_500LOC15method28(short,long,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method28_1()
		throws Exception {
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
		short var0 = (short) 1;
		long var1 = 1L;
		char var2 = '';

		short result = fixture.hw1_500LOC15method28(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 1, result);
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

		short result = hw1_500LOC15.hw1_500LOC15method29(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 6328, result);
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

		long result = hw1_500LOC15.hw1_500LOC15method3(var0, var1, var2);

		// add additional test code here
		assertEquals(23L, result);
	}

	/**
	 * Run the byte hw1_500LOC15method30(char,short,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method30_1()
		throws Exception {
		char var0 = '';
		short var1 = (short) 1;
		float var2 = 1.0f;

		byte result = hw1_500LOC15.hw1_500LOC15method30(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) -87, result);
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

		long result = hw1_500LOC15.hw1_500LOC15method31(var0, var1, var2);

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

		Object result = hw1_500LOC15.hw1_500LOC15method32(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals(null, result);
	}

	/**
	 * Run the char hw1_500LOC15method33(long,short,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method33_1()
		throws Exception {
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
		long var0 = 1L;
		short var1 = (short) 1;
		byte var2 = (byte) 1;

		char result = fixture.hw1_500LOC15method33(var0, var1, var2);

		// add additional test code here
		assertEquals('c', result);
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

		byte result = hw1_500LOC15.hw1_500LOC15method34(var0, var1, var2, var3, var4, var5, var6, var7, var8);

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

		short result = hw1_500LOC15.hw1_500LOC15method4(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the int hw1_500LOC15method5(long,long,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method5_1()
		throws Exception {
		long var0 = 1L;
		long var1 = 1L;
		int var2 = 1;

		int result = hw1_500LOC15.hw1_500LOC15method5(var0, var1, var2);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the short hw1_500LOC15method6(String,short,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method6_1()
		throws Exception {
		String var0 = "";
		short var1 = (short) 1;
		byte var2 = (byte) 1;

		short result = hw1_500LOC15.hw1_500LOC15method6(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the short hw1_500LOC15method7(short,short,int,long,long,hw1_500LOC26,hw1_500LOC22,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method7_1()
		throws Exception {
		short var0 = (short) 1;
		short var1 = (short) 1;
		int var2 = 1;
		long var3 = 1L;
		long var4 = 1L;
		hw1_500LOC26 var5 = new hw1_500LOC26();
		hw1_500LOC22 var6 = new hw1_500LOC22();
		long var7 = 1L;

		short result = hw1_500LOC15.hw1_500LOC15method7(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the char hw1_500LOC15method8(int,float,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method8_1()
		throws Exception {
		int var0 = 1;
		float var1 = 1.0f;
		char var2 = '';

		char result = hw1_500LOC15.hw1_500LOC15method8(var0, var1, var2);

		// add additional test code here
		assertEquals('', result);
	}

	/**
	 * Run the char hw1_500LOC15method9(int,char,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:00 PM
	 */
	@Test
	public void testHw1_500LOC15method9_1()
		throws Exception {
		int var0 = 1;
		char var1 = '';
		short var2 = (short) 1;

		char result = hw1_500LOC15.hw1_500LOC15method9(var0, var1, var2);

		// add additional test code here
		assertEquals('', result);
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
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
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
		assertEquals((short) 23819, result);
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
		hw1_500LOC15 fixture = new hw1_500LOC15();
		fixture.f0 = new byte[] {};
		int var0 = 1;
		char var1 = '';
		long var2 = 1L;
		int var3 = 1;

		String result = fixture.hw1_500LOCInterface8Method1(var0, var1, var2, var3);

		// add additional test code here
		assertEquals("bwmhoapqpkpjnlchdekwjrdfteva", result);
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

		hw1_500LOC15.main(args);

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

		hw1_500LOC15.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

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
		new org.junit.runner.JUnitCore().run(hw1_500LOC15Test.class);
	}
}