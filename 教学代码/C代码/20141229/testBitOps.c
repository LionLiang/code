f#include <stdio.h>

int main(void)
{
    char firstVar = 13;
    char secVar = 35;
    char result = 0;
    // 位操作
    // 按位与 &
    result = firstVar & secVar;
    printf("firstVar AND secVar:%d\n", result);
    // 按位或 |
    result = firstVar | secVar;
    printf("firstVar OR secVar:%d\n", result);
    // 按位取反 ~
    result = ~firstVar;
    printf("NOT firstVar:%d\n", result);
    // 按位异或 ^ 同则为0，不同为1
    result = firstVar ^ secVar;
    printf("firstVar XOR secVar:%d\n", result);
    // 按位左移 <<
    result = firstVar << 2;
    printf("firstVar left move 2 bits:%d\n", result);
    // 按位右移 >>
    result = secVar >> 5;
    printf("secVar right move 5 bits:%d\n", result);
    secVar = -2;
    result = secVar >> 5;
    printf("secVar right move 5 bits:%d\n", result);
    return 0;
}
