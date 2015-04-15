#include<stdio.h>

#define DEBUG 1
#if DEBUG==1
    int myInt = 100;
#else
    myInt = 200;
    sssssss
    ddddddd
#endif

#define QY
 
int main (int argc, const char *argv[])
{

    //跟if else 有什么区别呢？
    //if else 属于c语言的语法。但是对于#开头的条件编译指，属于编译器功能， 准确的是属于预处理器的功能。
    //if else 当条件成立，则执行if 代码，否则执行else之后的代码， 是条件分支，但是不条件成立与否， 都是要参预编译的，  但是预处理指令，是根据条件成立与否来选择是否编译。 
    //
    //
#if 1 
    int myint = 200;
    printf("myint's value is %d\n",myint);
#endif 

#ifndef QY
    printf("Hello,qingyun\n");
#else
    printf("Hello,word\n");
#endif

#undef QY

//#error 故意错误
//#warning  请注意一下有没有错误
    printf("%s,%s,%d,%d,%s,%s",__DATE__,__FILE__,__LINE__,__STDC__,__TIME__,__func__);

    return 0;
}
