#include <stdio.h>
#include <unistd.h>

#define PI 3.14

void foo(void)
{
    printf("%s\n", __func__);
}

int bar(void)
{
    return 100;
}

int main(void)
{
    printf("Hello, world!\n");
    printf("%f\n", PI);

    foo();

    printf("bar:%d\n", bar());
    sleep(30);
    return 0;
}
