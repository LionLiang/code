#include <stdio.h>

void changeValue(int *varPtr)
{
   *varPtr = 99; 
   printf("<%s>: %d\n", __func__, *varPtr);
}


int main(void)
{
    int var = 30;
    printf("before:%d\n", var);

    changeValue(&var);

    printf("<%s>: %d\n", __func__, var);

    return 0;
}
