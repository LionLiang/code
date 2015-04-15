#include <stdio.h>

// 函数声明
extern void foo(int);
extern void bar(void);

int gVar = 100;
static int gStVar = 1000;

int main(void)
{
    int var = 10;
//    int var = 20;
    foo(20);

    bar();

    {
        int a = 10;
        int b = 20;
        int c = a + b;
        printf("c:%d\n", c);
    }
        //printf("c:%d\n", c);

    //int d = a + b + c;
    //printf("d:%d\n", d);
    printf("gVar:%d\n", gVar);
    //gVar++;
    printf("gVar:%d\n", gVar++);
    printf("gVar:%d\n", gVar);

    printf("gStVar:%d\n", gStVar);
    gStVar++;
    printf("gStVar:%d\n", gStVar);
    return 0;
}


void foo(int a)
{
//    int c = var + 30;
    int var = 20;
    int b = a + var;
    printf("%d\n", b);

    printf(">>> gVar:%d\n", gVar);
    gVar = 200;
    printf("<<< gVar:%d\n", gVar);


    printf(">>> gStVar:%d\n", gStVar);
    gStVar += 1000;
    printf("<<< gStVar:%d\n", gStVar);
}
