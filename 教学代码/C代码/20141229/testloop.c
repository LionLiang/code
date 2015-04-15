#include <stdio.h>

void foo(void)
{
    int a = 10;
    int b = 20;
    int res = a + b;
    printf("%d\n", res);
}

void bar(void)
{
    printf("%d\n", __LINE__);
    printf("%s\n", __func__);
}

int main(void)
{
    /*
     * for 循环语句 
     * for (赋初值;结束条件;改变条件)
     *  语句;
     */

    /*
    for (int i = 0; i < 10; i++) {
        printf("%d ", i);
    }
    for (int i = 0; i < 10; i++) {
        printf("* ");
    }

    printf("\n");
    int j = 0;
    
    for (; j < 10; j++) {
        printf("j ");
    }
    */

//    bar();
//    foo();

    int j = 0;
    for (int i = 0; i < 10; i++) {
        for (j = 0; j < 20; j++) {
            if (j % 5 == 0) {
               //break;  
            }
            printf("x ");
        }
        if (i == 3) {
            putchar('O');
            continue;
        }else {
            putchar('\n');
        }
    }

    printf("\n");
    return 0;
}
