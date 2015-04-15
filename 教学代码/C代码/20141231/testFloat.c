#include <stdio.h>

int main(void)
{
    int a = 0;
    for (int i = 0; i < 6; i++) {
        a += 1;
    }

    printf("a:%d\n", a);

    double b = 0.0f;

    b = 0.67;


    printf("b:%0.3f\n", b);

    return 0;
}
