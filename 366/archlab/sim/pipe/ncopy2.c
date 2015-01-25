/* $begin ncopy */
/*
 * ncopy - copy src to dst, returning number of positive ints
 * contained in src array.
 */
int ncopy(int *src, int *dst, int len)
{
    int count = 0;
    int val;

    int maxlen = len - 3; // divide by 4
    int i;
    for (i = 0; i < maxlen; i += 4){
	*src++;
	*dst++;
	val = *src;
	if (val > 0){
		count++;
	}
	*dst = val;

	val = *(src + 1);
	if (val > 0){
		count++;
	}
	*(dst + 1) = val;

	val = *(src + 2);
	if (val > 0){
		count++;
	}
	*(dst + 2) = val;

	val = *(src + 3);
	if (val > 0){
		count++;
	}
	*(dst + 3) = val;
	
	i += 4;
    }
    
    for (; i < len; i++){
	val = *src++;
	if (val > 0){
		count++;
	}
	*dst++ = val;
	i++;
    }

    return count;
}
/* $end ncopy */
