/*
William Montgomery
Jeffrey Grandt
HW 9a

The results from the execution of the program is as follows.

32 floati
Float Sum inner1: original loop no unrolling:
6.93 cycles/element
Float Sum inner4: unroll 2x and 2 accumulators:
4.68 cycles/element

32 int
Integer Sum inner1: original loop no unrolling:
5.40 cycles/element
Integer Sum inner4: unroll 2x and 2 accumulators:
4.22 cycles/element

64 float
Float Sum inner1: original loop no unrolling:
6.44 cycles/element
Float Sum inner4: unroll 2x and 2 accumulators:
4.36 cycles/element

64 int
Integer Sum inner1: original loop no unrolling:
5.37 cycles/element
Integer Sum inner4: unroll 2x and 2 accumulators:
4.60 cycles/element
*/

#include "combine.h"

/* Combining functions */

char inner1_descr[] = "inner1: original loop no unrolling";
/* $begin inner1 */
void inner1(vec_ptr u, vec_ptr v, data_t *dest)
{
long int i;
int length = vec_length(u);
data_t *udata = get_vec_start(u);
data_t *vdata = get_vec_start(v);
data_t sum = (data_t) 0;
for (i=0;i<length;i++){
    sum = sum + udata[i] * vdata[i];
    }
*dest = sum;
}


char inner4_descr[] = "inner4: unroll 2x and 2 accumulators"; 
/* $begin inner4 */
void inner4(vec_ptr u, vec_ptr v, data_t *dest)
{
int i1;
long int i;
int length = vec_length(u);
data_t *udata = get_vec_start(u);
data_t *vdata = get_vec_start(v);
data_t sum = (data_t) 0;
for (i=0;i<length - 1;i +=2){
    i1 = i + 1;
    sum = sum + udata[i] * vdata[i] + udata[i1] * vdata[i1];
    }
for (; i < length; i++) {
    sum = sum + udata[i] * vdata[i];
}
*dest = sum;
}



void register_combiners(void)
{
    add_combiner(inner1, inner1, inner1_descr);
    add_combiner(inner4, inner1, inner4_descr);
}
