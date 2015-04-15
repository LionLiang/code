ree#include<stdio.h>

int gGlobal = 0; //全局已初始化数据区
char *pChar; //数据区：BSS

int main (int argc, const char *argv[])
{
    char array[] = "ABC";//array 是局部变量， 所以array在栈区
    //ABC是字符串常量，存储在数据区的初始化数据区，并且是只读的。

    int myInt; //是局部变量， 一定是在栈区

    char *anotherChar;//也是属于局部变量， 所以anotherChar 和thirdChar
    //指针变也是在栈区存放
    char *thirdChar;


    char *fourChar = "123456";//123456\0 数据区的已初始化数据区 
    //fourChar这个指针变量，因为还是局部变量， 所以还在栈区存放。

    static int c = 0;//静态局部变量，存放在数据区：已初始化数据区

    char *fiveChar = (char*)malloc(10);//首先，fiveChar本身是局部指针变量， 它将存放在栈区， 但是fiveChar所指向的内存（10个字节）在堆区
    free (fiveChar); 
    return 0;
}
