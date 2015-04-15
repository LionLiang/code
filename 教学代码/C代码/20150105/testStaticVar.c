#include<stdio.h>

int nCount();
int main (int argc, const char *argv[])
{
    for (int i = 0; i < 20; i++)
    {
        int result = nCount();
        printf("%d",result);
    }
    return 0;
}

int nCount()
{
    //int n = 0;//栈上。因为是局部变量
    static int n = 0;//静态局部变量， 在全局数据区的已初始化数据区
    n++;

    return n;
}
