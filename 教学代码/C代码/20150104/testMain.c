#include<stdio.h>
//argc首先是一个整型变量：代表的是用户输入的参数个数和可执行程序名字相加的数量
//argv首先它是一个数组， 然后数组里存放的是字符串 这些字符 串：可执行程序的名字和参数列表
int main (int argc, const char *argv[])
{
    printf("the value of argc is %d\n",argc);
    for (int i = 0; i < argc; i++)
    {
        printf("%s\n",argv[i]);
    }
    return 0;
}
