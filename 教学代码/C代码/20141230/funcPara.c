#include <stdio.h>

// 该处的 a 和 b就是形参
int add(int a, int b) 
{
    int c = a + b;
    return c;
}


int main(void)
{
    int firstVar = 10;
    int secVar = 20;

    // 该处的firstVar和secVar是实参
    int result = add(firstVar, secVar);
    printf("result:%d\n", result);
    
    return 0;
}
