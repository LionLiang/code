#include <stdio.h>

// 全局变量声明
extern int gVar; 
//extern static int gStVar;

//int gVar = 300;

void bar(void)
{
    printf("<%s>%d %d\n", __func__, gVar, gStVar);
}
