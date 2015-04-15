#include <stdio.h>

int foo(void)
{
    static int i = 10;
    return i--;
}

int main(void)
{
    printf("Hello, world!\n");
    
    /*
     * while(表达式) 
     *  语句;
     * 
     */
    int i = 0;
    while(i++ < 10) {

        if (i == 5) {
           break;
          // continue;
        }
        printf("%d ",i);
        //i++;
    }

    printf("\n");
    printf("Outside the loop!\n");
   /* 
    while(foo()) {
        putchar('.');
    }
    */
    return 0;
}
