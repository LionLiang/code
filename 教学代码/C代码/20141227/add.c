#include <stdio.h>

extern int add(int a, int b);
extern void foo(void);

int main(void)
{
    int var1 = 10;
    int var2 = 20;

    int result = add(var1, var2);

    printf("result:%d\n", result);
    return 0;
}


int add(int a, int b)
{
    foo();
    return a + b;
}

void foo(void)
{
    printf("%s, %d\n", __func__, __LINE__);
}
