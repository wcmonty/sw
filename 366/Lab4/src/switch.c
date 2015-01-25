/*
 * William Montgomery
 * Lab 5 - CS 366
 * Spring 2013
 */
int switch_prob(int x, int n) {
	int result = x;

	switch (n - 0x32)
	{
	  case 0:
		result = result << 2;
		break;
	  case 1:
		result = result + 10;
		break;
	  case 2:
		result = result << 2;
		break;
	  case 3:
	    result = result >> 2;
	    break;
	  case 4:
	    result = result * 3;
		result = result * result;
		result = result + 0xa;
	  case 5:
	    result = result * result;
	    result = result + 0xa;
	  default:
	    result = result + 0xa;
	}

 return result;
}
