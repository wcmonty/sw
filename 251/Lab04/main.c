#include <stdio.h>
#include <stdlib.h>
#include "stack.h"

int main() {

    Stack s;

    s = stk_create(10);
    int i;

    printf("Stack size is %d.\n", stk_size(s));
    for (i = 0; i < 25; i++){
        stk_push(s, i);
    }

    stk_print(s);

    printf("Stack size is %d.\n", stk_size(s));

    ElemType elem = stk_pop(s);
    printf("Popped off");
    printf(FORMAT_STRING, elem);

    stk_print(s);

    stk_clear(s);
    stk_print(s);
    for (i = 0; i < 25; i++){
        stk_push(s, i);
    }
    for (i = 0; i < 25; i++){
            stk_push(s, i);
        }

    stk_print(s);
    stk_free(s);
    return 1;
}
