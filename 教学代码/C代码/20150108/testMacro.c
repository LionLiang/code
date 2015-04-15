#include<stdio.h>
//定义了一个宏， 宏的名字是QYPI 代表的是3.1415926
#define QYPI 3.1415926
#define NAME "zhangsan+lisi" QYPI

#define ADD a + b

#define COUNT_STUDENTS 30
int main (int argc, const char *argv[])
{
    float myPi = QYPI;
    printf("%f\n",myPi);

    int stus[COUNT_STUDENTS];

    QYPI;
    QYPI;
    QYPI;

    NAME;
    ADD;
    "ADD";
    return 0;
}
