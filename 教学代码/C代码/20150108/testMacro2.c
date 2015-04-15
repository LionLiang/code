#include<stdio.h>

#define AREA(x,y) printf(“长为#x,宽为#y 的长方形的面积：%d\n”,(x)*(y))


#define VAR(n) V##n
int main (int argc, const char *argv[])
{
    AREA(200,300);

    VAR(3);
    return 0;
}
