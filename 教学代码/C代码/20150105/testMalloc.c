#include<stdio.h>
#include<string.h>
#include<stdlib.h>


int main (int argc, const char *argv[])
{
    char *srcStr = "hello,qingyun";
    char *dstStr = NULL;
    //通常情况下， 我们申请完内存之后，会将申请到的内存转换我们需要的类型
    dstStr = (char*)malloc(strlen(srcStr)+1);
    //char dstStr[20] = {'\0'};

    strcpy (dstStr, srcStr);

    printf("the value of dstStr is %s\n",dstStr);

    //堆上的内存， 由程序员自己管理， 自己申请， 用完之后， 自己释放
    //如果只是申请，不去释放， 则程序会因为内存泄漏，而导致内存耗尽而
    //崩溃
    free(dstStr);

    return 0;
}
