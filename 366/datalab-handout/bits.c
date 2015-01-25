/*
 * CS:APP Data Lab 
 * 
 * Author: William Montgomery
 * Userid: wmontg2
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */
#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:

Replace the "return" statement in each function with one
or more lines of C code that implements the function. Your code
must conform to the following style:

int Funct(arg1, arg2, ...) {
	/* brief description of how your implementation works */
	int var1 = Expr1;
	...
	int varM = ExprM;

	varJ = ExprJ;
	...
	varN = ExprN;
	return ExprR;
}

Each "Expr" is an expression using ONLY the following:
1. Integer constants 0 through 255 (0xFF), inclusive. You are
not allowed to use big constants such as 0xffffffff.
2. Function arguments and local variables (no global variables).
3. Unary integer operations ! ~
4. Binary integer operations & ^ | + << >>

Some of the problems restrict the set of allowed operators even further.
Each "Expr" may consist of multiple operators. You are not restricted to
one operator per line.

You are expressly forbidden to:
1. Use any control constructs such as if, do, while, for, switch, etc.
2. Define or use any macros.
3. Define any additional functions in this file.
4. Call any functions.
5. Use any other operations, such as &&, ||, -, or ?:
6. Use any form of casting.
7. Use any data type other than int. This implies that you
cannot use arrays, structs, or unions.

You may assume that your machine:
1. Uses 2s complement, 32-bit representations of integers.
2. Performs right shifts arithmetically.
3. Has unpredictable behavior when shifting an integer by more
than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
/*
 * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
 */
int pow2plus1(int x) {
	/* exploit ability of shifts to compute powers of 2 */
	return (1 << x) + 1;
}

/*
 * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
 */
int pow2plus4(int x) {
	/* exploit ability of shifts to compute powers of 2 */
	int result = (1 << x);
	result += 4;
	return result;
}

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict. You are allowed to use looping and
conditional control. You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
1. Define or use any macros.
2. Define any additional functions in this file.
3. Call any functions.
4. Use any form of casting.
5. Use any data type other than int or unsigned. This means that you
cannot use arrays, structs, or unions.
6. Use any floating point data types, operations, or constants.

NOTES:
1. Use the dlc (data lab checker) compiler (described in the handout) to
check the legality of your solutions.
2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
that you are allowed to use for your implementation of the function.
The max operator count is checked by dlc. Note that '=' is not
counted; you may use as many of these as you want without penalty.
3. Use the btest test harness to check your functions for correctness.
4. Use the BDD checker to formally verify your functions
5. The maximum number of ops for each function is given in the
header comment for each function. If there are any inconsistencies
between the maximum ops in the writeup and in this file, consider
this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */

#endif

/*
 * bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int bitCount(int x) {
	/*
	 * This method uses carefully created masks to sum up
	 * multiple bits at once.  The first mask is alternating
	 * 0's and 1's.  Adjacent bits are added together and stored
	 * back in x.  Then a mask of two 0's and two 1's repeated is
	 * used to add the results from the prior additions.  Then four
	 * 0's and four 1's are used to add together these results.  Since
	 * the result must be less than two bytes, I just shifted and
	 * added the results together.  Since the result must be six bits
	 * or smaller, the result is and'ed with 0x3F to remove extraneous
	 * bits.
	 */
	int mask1, mask2, mask3;

	mask3 = (0x0F << 8) | 0x0F;
	mask3 = (mask3 << 16) | mask3;
	mask2 = (mask3<<2) ^ mask3;
	mask1 = (mask2<<1) ^ mask2;

	x = x + ~((x >> 1) & mask1) + 1;

	x = (x & mask2) + ((x >> 2) & mask2);

	x = (x + (x >> 4)) & mask3;

	x = x + (x >> 8);
	x = x + (x >> 16);
	return x & 0x3F;
}

/* 
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf) {
	/*
	 * I first break the sign, exponent, and mantissa into their respective
	 * parts.  The sign bit stays in its correct position as do the mantissa
	 * bits.  The exponent remains shifted to the right.  If the input is either
	 * infinity or NAN, I return the input. If the exponent is zero,
	 * I return the input shifted to the left once along with the sign bit.
	 * Otherwise, I add one to the exponent to multiply by 2, and put the return
	 * value back together.
	 */
	int sign;
	int exponent;
	int mantissa;

	sign = (uf >> 31) << 31;
	exponent = (uf << 1) >> 24;
	mantissa = (uf << 9) >> 9;

	if (exponent){
		if (exponent == 0xFF) {
			return uf;
		}
		else {
			exponent = exponent + 1;
		}
	}
	else {
		return ((uf << 1) | sign);
	}

	return sign | (exponent << 23) | mantissa;
}

/* 
 * greatestBitPos - return a mask that marks the position of the
 *               most significant 1 bit. If x == 0, return 0
 *   Example: greatestBitPos(96) = 0x40
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 70
 *   Rating: 4 
 */
int greatestBitPos(int x) {
	/*
	 * This method creates first creates a bit string of all zeros to the
	 * left of the leftmost 1, and all 1's to the right of it.  It is then
	 * xor'ed with itself shifted once to the right to remove all of the 1's
	 * that are on the right of the leftmost 1.  In the case when the leftmost
	 * 1 is in the leftmost position the right shift does not produce a zero in
	 * the leftmost position.  Thus, a mask is created to force the leftmost bit
	 * to be zero.
	 */

	int mask;
	x = (x >> 1) | x;
	x = (x >> 2) | x;
	x = (x >> 4) | x;
	x = (x >> 8) | x;
	x = (x >> 16) | x;

	mask = ~(1 << 31);
	return (x ^ (x >> 1 & mask));
}

/*
 * satAdd - adds two numbers but when positive overflow occurs, returns
 *          maximum possible value, and when negative overflow occurs,
 *          it returns minimum positive value.
 *   Examples: satAdd(0x40000000,0x40000000) = 0x7fffffff
 *             satAdd(0x80000000,0xffffffff) = 0x80000000
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 30
 *   Rating: 4
 */
int satAdd(int x, int y) {
	/*
	 * I first add x and y together.  If overflow has occurred,
	 * x and y must be the same and the sign bit when they are
	 * added must be the opposite.  I made a mask out of this, by
	 * shifting it to the right 31 spots.  To generate the largest
	 * or smallest value, I shifted the value of xPlusY all of the
	 * way to the right and then flipped the sign bit. Then either
	 * the value of x + y or the largest or smallest is returned by
	 * and'ing each with the correct mask and or'ing the results
	 * together.
	 */
	int xPlusY;
	int mask;
	int largestOrSmallest;

	xPlusY = x + y;
	mask = ((xPlusY ^ x) & (xPlusY ^ y)) >> 31;
	largestOrSmallest = (xPlusY >> 31) ^ (1 << 31);
	return (xPlusY & ~mask) | (largestOrSmallest & mask);
}

/* 
 * sm2tc - Convert from sign-magnitude to two's complement
 *   where the MSB is the sign bit
 *   Example: sm2tc(0x80000005) = -5.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 4
 */
int sm2tc(int x) {
	/*
	 * This method first creates a mask from the sign bit.
	 * If the sign is 1, it creates a mask of all 1's.  If it
	 * is 0, it creates a mask of all 0's.  It negates the input
	 * by inverting the input and setting the leftmost bit to 1.  1
	 * is then added to complete the transformation.  The value is
	 * computed by return the input and'ed with the mask bitwise inverted or'ed
	 * with the negNumber and'ed with the mask.
	 */
	   int s=x>>31;
	    int m=(~(1<<31))&x;
	    return (m^s)+(1&s);
//	int mask;
//	int negNumber;
//
//	mask = x >> 31;
//	negNumber = (~x | (1 << 31)) + 1;
//	return (x & ~mask) | (negNumber & mask);
}

/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int conditional(int x, int y, int z) {
	/*
	 * This function first creates a mask.  If there are any
	 * bits set in x, then it creates a mask of all 0's.  Otherwise
	 * it creates a mask of all 1's.  The mask is and'ed to z and
	 * bitwise inverted and and'ed with y to create.  These values are
	 * or'ed together to generate the result.
	 */
	int mask;

	mask = (!x << 31) >> 31;
	return (y & ~mask) | (z & mask);
}

/* 
 * isAsciiDigit - return 1 if 0x30 <= x <= 0x39 (ASCII codes for characters '0' to '9')
 *   Example: isAsciiDigit(0x35) = 1.
 *            isAsciiDigit(0x3a) = 0.
 *            isAsciiDigit(0x05) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 3
 */
int isAsciiDigit(int x) {
	/*
	 * This method first checks to see if the second byte is equal to 3 or not.
	 * If it is secondByte will be set to 0.  Then it checks to see if the first
	 * byte is either less than seven by shifting the three bits off or eight or nine.
	 *
	 */
	int secondByte;

	secondByte = x ^ 0x30;
	return !(secondByte >> 3) | !(secondByte & ~0x09);
}

/* 
 * isPositive - return 1 if x > 0, return 0 otherwise 
 *   Example: isPositive(-1) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 3
 */
int isPositive(int x) {
	/*
	 * This function finds when the value is either negative,
	 * by shifting the sign bit all of the way right, or zero, by
	 * performing a logical not on the input value.  This result is
	 * then logically not'ed to return 1 when the input value is positive.
	 */
	return !((x >> 31) | !x);
}

/* 
 * replaceByte(x,n,c) - Replace byte n in x with c
 *   Bytes numbered from 0 (LSB) to 3 (MSB)
 *   Examples: replaceByte(0x12345678,1,0xab) = 0x1234ab78
 *   You can assume 0 <= n <= 3 and 0 <= c <= 255
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 10
 *   Rating: 3
 */
int replaceByte(int x, int n, int c) {
	/*
	 * The number of positions is first determined by multiplying
	 * the byte number times 8 by shifting it left three times.
	 * Then a mask is created by shifting 0xff left into the correct
	 * place and inverting the result.  To create the output, I and'ed
	 * the input value with the mask and shifted the input byte into the
	 * correct position.
	 */
	int shiftPosition;
	int mask;

	shiftPosition = n << 3;
	mask = ~(0xff << shiftPosition);
	return (x & mask) | (c << shiftPosition);
}

/* 
 * rotateLeft - Rotate x to the left by n
 *   Can assume that 0 <= n <= 31
 *   Examples: rotateLeft(0x87654321,4) = 0x76543218
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 25
 *   Rating: 3 
 */
int rotateLeft(int x, int n) {
	/*
	 * This method generates the left side of the return value
	 * by shifting the input left n positions.  Then a mask of n 1's
	 * on the right and the rest 0's is created.  The input value
	 * is shifted to the right 32 - n times and and'ed with the mask
	 * to generate the right side.  The left and right are or'ed
	 * together to create the return value.
	 */
	int left, right;
	int mask;

	left = x << n;
	mask = ~0 + (1 << n);
	right = (x >> (33 + ~n)) & mask;

	return left | right;
}

/* 
 * anyEvenBit - return 1 if any even-numbered bit in word set to 1
 *   Examples anyEvenBit(0xA) = 0, anyEvenBit(0xE) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
int anyEvenBit(int x) {
	/*
	 * This result is generated by creating a mask of
	 * 0's in all of the odd positions and 1's in all of the
	 * even positions.  The mask is and'ed with the input value
	 * and logically not'ed twice to generate the result.
	 */
	int mask;
	mask = (0x55 << 8) | 0x55;
	mask = (mask << 16) | mask;
	return !!(x & mask);
}

/* 
 * byteSwap - swaps the nth byte and the mth byte
 *  Examples: byteSwap(0x12345678, 1, 3) = 0x56341278
 *            byteSwap(0xDEADBEEF, 0, 2) = 0xDEEFBEAD
 *  You may assume that 0 <= n <= 3, 0 <= m <= 3
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 2
 */
int byteSwap(int x, int n, int m) {
	/*
	 * I first isolate the m-byte by shifting it
	 * right the correct number of places and and'ing
	 * it with a mask.  I do the same with the n-byte.
	 * I then set to zero all the bits in the n- and m-
	 * bytes of the original integer.  Then I shift the
	 * n-byte to the mth place and the m-byte to the nth
	 * place and or the result with the value with the bytes
	 * removed to generate the return value.
	 */
	int bitsToShiftM, mByte;
	int bitsToShiftN, nByte;
	int xWithBytesRemoved;

	bitsToShiftM = m << 3;
	mByte = (x >> bitsToShiftM) & 0xff;

	bitsToShiftN = n << 3;
	nByte = (x >> bitsToShiftN) & 0xff;

	xWithBytesRemoved = x & ~(0xff << bitsToShiftM) & ~(0xff << bitsToShiftN);
	return xWithBytesRemoved | (nByte << bitsToShiftM) | (mByte << bitsToShiftN);
}

/* 
 * fitsBits - return 1 if x can be represented as an 
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n) {
	/*
	 * First, I generate a mask of all ones or zeros
	 * from the sign bit.  This is xor'ed with the input
	 * to generate a value where every bit is flipped for
	 * negative values but unchanged for positive values.
	 * I shift this result n -1 values to the right.  If
	 * there are any bits remaining (i.e. they won't fit in
	 * the number of bits, then I return 0.  Otherwise, I return
	 * 1.
	 */
	int mask;
	int flippedBits;

	mask = x >> 31;
	flippedBits = x ^ mask;
	return !(flippedBits >> (n + ~0));
}

/* 
 * float_abs - Return bit-level equivalent of absolute value of f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument..
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_abs(unsigned uf) {
	/*
	 * Here, I created a mask of all ones except
	 * for the leftmost bit.  By and'ing this with the
	 * input value, we can generate the absolute value.
	 * If the resulting value is a NAN, we return the original
	 * value.
	 */
	int mask;
	unsigned returnVal;

	mask = ~(1 << 31);
	returnVal = uf & mask;

	if (returnVal > 0x7F800000) {
		return uf;
	}
	return returnVal;
}

/* 
 * isEqual - return 1 if x == y, and 0 otherwise 
 *   Examples: isEqual(5,5) = 1, isEqual(4,5) = 0
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int isEqual(int x, int y) {
	/*
	 * I xor'ed x and y together.  When they are
	 * equal, this value should be 0.  By performing a logical
	 * not, I generated the output.
	 */
	return !(x ^ y);
}

/* 
 * bitNor - ~(x|y) using only ~ and & 
 *   Example: bitNor(0x6, 0x5) = 0xFFFFFFF8
 *   Legal ops: ~ &
 *   Max ops: 8
 *   Rating: 1
 */
int bitNor(int x, int y) {
	/*
	 * This is a straightforward translation from
	 * the fact that x nor y is only one when x is 0
	 * and y is zero.
	 */
	return ~x & ~y;
}

/* 
 * bitXor - x^y using only ~ and & 
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 1
 */
int bitXor(int x, int y) {
	/*
	 * I first compute where x ^ y is zero, either when both
	 * bits are 1 or when both bits are 0.  By using DeMorgan's
	 * law, I translate when both bits are 1's or 0's and bitwise invert
	 * it to obtain when x ^ y should be 1.
	 */
	int both, neither;

	both = x & y;
	neither = ~x & ~y;
	return ~both & ~neither;
}

/* 
 * thirdBits - return word with every third bit (starting from the LSB) set to 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 1
 */
int thirdBits(void) {
	/*
	 * To generate the return value, I first create the
	 * rightmost 16 bits.  This is shifted over 18 places
	 * and or'ed with itself to create the return value.
	 */
	int returnVal = (0x92 << 8) | 0x49;
	return (returnVal << 18) | returnVal;
}

/* 
 * TMax - return maximum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmax(void) {
	/*
	 * The max value is 0x7fffffff.  To achieve this,
	 * I shifted 1 to the leftmost bit and did an bitwise
	 * not.
	 */
	return ~(0x1 << 31);
}

/* 
 * upperBits - pads n upper bits with 1's
 *  You may assume 0 <= n <= 32
 *  Example: upperBits(4) = 0xF0000000
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 10
 *  Rating: 1
 */
int upperBits(int n) {
	/*
	 * This function finds the logical not of n twice.
	 * It then shifts that value over the leftmost position.
	 * It then does an arithmetic shift right n - 1 times
	 */
	return (!!n << 31) >> (n + ~0);
}

