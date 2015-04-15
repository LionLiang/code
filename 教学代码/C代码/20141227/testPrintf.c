#include <stdio.h>

int main(void)
{
    /* 格式化修饰符  */
    int var = 30;
    float fVar = 3.14;
    char *p = "Hello, world";
    printf("%d\n", var);
    printf("30\n");
    printf("%f\n", fVar);
    printf("%s\n", "Hello, world!");
    printf("%p\n", p);
    return 0;
}
