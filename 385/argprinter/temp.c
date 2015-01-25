int nums[5] = {3 , 5, 7};

int *np = nums;

// The below are equivalent
nums[2] = 42;
*(np + 2) = 42;
*(nums + 2) = 42;
np[2] = 42;

int na[3][4] = {{2, 3, 4, 5,
				{5, 10},
				{1, 7}};

// Stored in memory as:
// 2 3 4 5 5 10 null null 1 7 null null


*(na + 2 * 4 + 1); // 4 is the rowsize

int *npa[3];

for (int i = 0; i < 3; i++)
	// np[i] = new int[4];
	np[i] = (int *) malloc (4 * sizeof(int));


