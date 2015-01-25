package test;

import org.junit.*;
import static org.junit.Assert.*;

/**
 * The class <code>hw1_500LOC20Test</code> contains tests for the class <code>{@link hw1_500LOC20}</code>.
 *
 * @generatedBy CodePro at 3/28/14 11:01 PM
 * @author wcmonty
 * @version $Revision: 1.0 $
 */
public class hw1_500LOC20Test {
	/**
	 * Run the hw1_500LOC20() constructor test.
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20_1()
		throws Exception {
		hw1_500LOC20 result = new hw1_500LOC20();
		assertNotNull(result);
		// add additional test code here
	}

	/**
	 * Run the double hw1_500LOC20method0(float,char,int,long,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method0_1()
		throws Exception {
		float var0 = 1.0f;
		char var1 = '';
		int var2 = 1;
		long var3 = 1L;
		float var4 = 1.0f;

		double result = hw1_500LOC20.hw1_500LOC20method0(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(0.030779634907774467, result, 0.1);
	}

	/**
	 * Run the long hw1_500LOC20method1(int,byte,int,int,byte,String,hw1_500LOC25) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
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

		long result = hw1_500LOC20.hw1_500LOC20method1(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals(30L, result);
	}

	/**
	 * Run the char hw1_500LOC20method10(long,int,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method10_1()
		throws Exception {
		long var0 = 1L;
		int var1 = 1;
		byte var2 = (byte) 1;

		char result = hw1_500LOC20.hw1_500LOC20method10(var0, var1, var2);

		// add additional test code here
		assertEquals('a', result);
	}

	/**
	 * Run the long hw1_500LOC20method11(short,short,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method11_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		short var0 = (short) 1;
		short var1 = (short) 1;
		char var2 = '';

		long result = fixture.hw1_500LOC20method11(var0, var1, var2);

		// add additional test code here
		assertEquals(41L, result);
	}

	/**
	 * Run the double hw1_500LOC20method13(byte,float,hw1_500LOC12,double,hw1_500LOC12,char,char,int,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method13_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
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
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the float hw1_500LOC20method14(float,short,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method14_1()
		throws Exception {
		float var0 = 1.0f;
		short var1 = (short) 1;
		int var2 = 1;

		float result = hw1_500LOC20.hw1_500LOC20method14(var0, var1, var2);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the short hw1_500LOC20method15(char,char,int,String,char,byte,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method15_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		char var0 = '';
		char var1 = '';
		int var2 = 1;
		String var3 = "";
		char var4 = '';
		byte var5 = (byte) 1;
		short var6 = (short) 1;

		short result = fixture.hw1_500LOC20method15(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the long hw1_500LOC20method16(hw1_500LOC33,float,byte,short,byte,long,long,long,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method16_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
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
		assertEquals(1L, result);
	}

	/**
	 * Run the Object hw1_500LOC20method18(float,hw1_500LOC16,int,double,short,short,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
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

		Object result = hw1_500LOC20.hw1_500LOC20method18(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the char hw1_500LOC20method19(char,hw1_500LOC14,long,int,float,byte,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method19_1()
		throws Exception {
		char var0 = '';
		hw1_500LOC14 var1 = new hw1_500LOC14();
		long var2 = 1L;
		int var3 = 1;
		float var4 = 1.0f;
		byte var5 = (byte) 1;
		String var6 = "";

		char result = hw1_500LOC20.hw1_500LOC20method19(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals('', result);
	}

	/**
	 * Run the int hw1_500LOC20method2(String,byte,long,byte,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method2_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		String var0 = "";
		byte var1 = (byte) 1;
		long var2 = 1L;
		byte var3 = (byte) 1;
		float var4 = 1.0f;

		int result = fixture.hw1_500LOC20method2(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(22, result);
	}

	/**
	 * Run the byte hw1_500LOC20method21(int,char,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method21_1()
		throws Exception {
		int var0 = 1;
		char var1 = '';
		String var2 = "";

		byte result = hw1_500LOC20.hw1_500LOC20method21(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) 60, result);
	}

	/**
	 * Run the char hw1_500LOC20method22(short,float,char,int,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method22_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		short var0 = (short) 1;
		float var1 = 1.0f;
		char var2 = '';
		int var3 = 1;
		int var4 = 1;

		char result = fixture.hw1_500LOC20method22(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals('', result);
	}

	/**
	 * Run the int hw1_500LOC20method23(float,short,String,int,int,String,hw1_500LOC13,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
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

		int result = hw1_500LOC20.hw1_500LOC20method23(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(1, result);
	}

	/**
	 * Run the float hw1_500LOC20method25(int,String,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method25_1()
		throws Exception {
		int var0 = 1;
		String var1 = "";
		double var2 = 1.0;

		float result = hw1_500LOC20.hw1_500LOC20method25(var0, var1, var2);

		// add additional test code here
		assertEquals(0.38480878f, result, 0.1f);
	}

	/**
	 * Run the byte hw1_500LOC20method26(long,String,long,int,long,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method26_1()
		throws Exception {
		long var0 = 1L;
		String var1 = "";
		long var2 = 1L;
		int var3 = 1;
		long var4 = 1L;
		short var5 = (short) 1;

		byte result = hw1_500LOC20.hw1_500LOC20method26(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals((byte) 5, result);
	}

	/**
	 * Run the byte hw1_500LOC20method29(float,int,hw1_500LOC27) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method29_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		float var0 = 1.0f;
		int var1 = 1;
		hw1_500LOC27 var2 = new hw1_500LOC27();

		byte result = fixture.hw1_500LOC20method29(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) -106, result);
	}

	/**
	 * Run the String hw1_500LOC20method3(byte,hw1_500LOC11,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method3_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		byte var0 = (byte) 1;
		hw1_500LOC11 var1 = new hw1_500LOC11();
		long var2 = 1L;

		String result = fixture.hw1_500LOC20method3(var0, var1, var2);

		// add additional test code here
		assertEquals("tljjxujinhtkehjygiycsyrxexlmhydbwdwrnoeimtfiomqpusyoxkhsjkklanobrtoqtewjdbcmhqtgnghhatovnqeifjsusno", result);
	}

	/**
	 * Run the short hw1_500LOC20method30(double,short,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method30_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		double var0 = 1.0;
		short var1 = (short) 1;
		float var2 = 1.0f;

		short result = fixture.hw1_500LOC20method30(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the String hw1_500LOC20method31(int,char,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method31_1()
		throws Exception {
		int var0 = 1;
		char var1 = '';
		String var2 = "";

		String result = hw1_500LOC20.hw1_500LOC20method31(var0, var1, var2);

		// add additional test code here
		assertEquals("", result);
	}

	/**
	 * Run the short hw1_500LOC20method33(int,short,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method33_1()
		throws Exception {
		int var0 = 1;
		short var1 = (short) 1;
		long var2 = 1L;

		short result = hw1_500LOC20.hw1_500LOC20method33(var0, var1, var2);

		// add additional test code here
		assertEquals((short) 1, result);
	}

	/**
	 * Run the byte hw1_500LOC20method7(double,double,int,long,String,float,double,float,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method7_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
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
		assertEquals((byte) 7, result);
	}

	/**
	 * Run the byte hw1_500LOC20method8(byte,hw1_500LOC21,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC20method8_1()
		throws Exception {
		byte var0 = (byte) 1;
		hw1_500LOC21 var1 = new hw1_500LOC21();
		short var2 = (short) 1;

		byte result = hw1_500LOC20.hw1_500LOC20method8(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) 1, result);
	}

	/**
	 * Run the float hw1_500LOC3method11(short,long,long) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method11_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		short var0 = (short) 1;
		long var1 = 1L;
		long var2 = 1L;

		float result = fixture.hw1_500LOC3method11(var0, var1, var2);

		// add additional test code here
		assertEquals(0.8223397f, result, 0.1f);
	}

	/**
	 * Run the String hw1_500LOC3method12(short,double,double,hw1_500LOC16) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method12_1()
		throws Exception {
		short var0 = (short) 1;
		double var1 = 1.0;
		double var2 = 1.0;
		hw1_500LOC16 var3 = new hw1_500LOC16();

		String result = hw1_500LOC20.hw1_500LOC3method12(var0, var1, var2, var3);

		// add additional test code here
		assertEquals("uisnoromwmpuwuvtksuwokmtlaxlbqbytnyaionbwlxokdriqmiawf", result);
	}

	/**
	 * Run the String hw1_500LOC3method13(byte,long,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method13_1()
		throws Exception {
		byte var0 = (byte) 1;
		long var1 = 1L;
		String var2 = "";

		String result = hw1_500LOC20.hw1_500LOC3method13(var0, var1, var2);

		// add additional test code here
		assertEquals("", result);
	}

	/**
	 * Run the char hw1_500LOC3method14(long,long,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method14_1()
		throws Exception {
		long var0 = 1L;
		long var1 = 1L;
		short var2 = (short) 1;

		char result = hw1_500LOC20.hw1_500LOC3method14(var0, var1, var2);

		// add additional test code here
		assertEquals('q', result);
	}

	/**
	 * Run the int hw1_500LOC3method15(char,byte,byte) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method15_1()
		throws Exception {
		char var0 = '';
		byte var1 = (byte) 1;
		byte var2 = (byte) 1;

		int result = hw1_500LOC20.hw1_500LOC3method15(var0, var1, var2);

		// add additional test code here
		assertEquals(48, result);
	}

	/**
	 * Run the long hw1_500LOC3method2(int,short,hw1_500LOC32,hw1_500LOC17,byte,char) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method2_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		int var0 = 1;
		short var1 = (short) 1;
		hw1_500LOC32 var2 = new hw1_500LOC32();
		hw1_500LOC17 var3 = new hw1_500LOC17();
		byte var4 = (byte) 1;
		char var5 = '';

		long result = fixture.hw1_500LOC3method2(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals(87L, result);
	}

	/**
	 * Run the Object hw1_500LOC3method4(char,float,double,int,hw1_500LOC22,float) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method4_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		char var0 = '';
		float var1 = 1.0f;
		double var2 = 1.0;
		int var3 = 1;
		hw1_500LOC22 var4 = new hw1_500LOC22();
		float var5 = 1.0f;

		Object result = fixture.hw1_500LOC3method4(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertNotNull(result);
	}

	/**
	 * Run the float hw1_500LOC3method5(long,long,float,long,short,String,char,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
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

		float result = hw1_500LOC20.hw1_500LOC3method5(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the byte hw1_500LOC3method6(char,long,double,long,String,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method6_1()
		throws Exception {
		char var0 = '';
		long var1 = 1L;
		double var2 = 1.0;
		long var3 = 1L;
		String var4 = "";
		int var5 = 1;

		byte result = hw1_500LOC20.hw1_500LOC3method6(var0, var1, var2, var3, var4, var5);

		// add additional test code here
		assertEquals((byte) -55, result);
	}

	/**
	 * Run the long hw1_500LOC3method7(long,byte,int,long,int) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method7_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		long var0 = 1L;
		byte var1 = (byte) 1;
		int var2 = 1;
		long var3 = 1L;
		int var4 = 1;

		long result = fixture.hw1_500LOC3method7(var0, var1, var2, var3, var4);

		// add additional test code here
		assertEquals(1L, result);
	}

	/**
	 * Run the String hw1_500LOC3method8(String,char,hw1_500LOC18,String) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method8_1()
		throws Exception {
		String var0 = "";
		char var1 = '';
		hw1_500LOC18 var2 = new hw1_500LOC18();
		String var3 = "";

		String result = hw1_500LOC20.hw1_500LOC3method8(var0, var1, var2, var3);

		// add additional test code here
		assertEquals("", result);
	}

	/**
	 * Run the byte hw1_500LOC3method9(short,String,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOC3method9_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		short var0 = (short) 1;
		String var1 = "";
		double var2 = 1.0;

		byte result = fixture.hw1_500LOC3method9(var0, var1, var2);

		// add additional test code here
		assertEquals((byte) 28, result);
	}

	/**
	 * Run the float hw1_500LOCInterface9Method0(double,hw1_500LOC19,char,float,short,short,long,hw1_500LOC16) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOCInterface9Method0_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		double var0 = 1.0;
		hw1_500LOC19 var1 = new hw1_500LOC19();
		char var2 = '';
		float var3 = 1.0f;
		short var4 = (short) 1;
		short var5 = (short) 1;
		long var6 = 1L;
		hw1_500LOC16 var7 = new hw1_500LOC16();

		float result = fixture.hw1_500LOCInterface9Method0(var0, var1, var2, var3, var4, var5, var6, var7);

		// add additional test code here
		assertEquals(1.0f, result, 0.1f);
	}

	/**
	 * Run the double hw1_500LOCInterface9Method1(int,hw1_500LOC27,double,double,short,short,double) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOCInterface9Method1_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		int var0 = 1;
		hw1_500LOC27 var1 = new hw1_500LOC27();
		double var2 = 1.0;
		double var3 = 1.0;
		short var4 = (short) 1;
		short var5 = (short) 1;
		double var6 = 1.0;

		double result = fixture.hw1_500LOCInterface9Method1(var0, var1, var2, var3, var4, var5, var6);

		// add additional test code here
		assertEquals(1.0, result, 0.1);
	}

	/**
	 * Run the long hw1_500LOCInterface9Method2(float,byte,short) method test.
	 *
	 * @throws Exception
	 *
	 * @generatedBy CodePro at 3/28/14 11:01 PM
	 */
	@Test
	public void testHw1_500LOCInterface9Method2_1()
		throws Exception {
		hw1_500LOC20 fixture = new hw1_500LOC20();
		fixture.f1 = new hw1_500LOC17();
		float var0 = 1.0f;
		byte var1 = (byte) 1;
		short var2 = (short) 1;

		long result = fixture.hw1_500LOCInterface9Method2(var0, var1, var2);

		// add additional test code here
		assertEquals(66L, result);
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

		hw1_500LOC20.main(args);

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

		hw1_500LOC20.singleEntry(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9);

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
		new org.junit.runner.JUnitCore().run(hw1_500LOC20Test.class);
	}
}