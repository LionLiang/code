#include <stdio.h>

int main(void)
{
    // 算术运算符
    // + - * / % ++ -- += -= *= /= %=

    int firstVar = 10;
    int secVar = 20;
    //10 = firstVar;

    int result = 0;

    result = firstVar + secVar;
    printf("result:%d\n", result);

    result = firstVar * secVar;
    printf("result:%d\n", result);

    result = firstVar / secVar;
    printf("result:%d\n", result);

    result = firstVar % secVar;
    printf("result:%d\n", result);

    result = secVar % firstVar;
    printf("result:%d\n", result);

    result += secVar;
    // result = result + secVar;
    printf("result:%d\n", result);

    result = firstVar++;  
    printf("result:%d firstVar:%d\n", result, firstVar);


    result = --secVar;  
    printf("result:%d secVar:%d\n", result, secVar);


    //result = firstVar+++secVar---firstVar;
    printf("result:%d firstVar:%d secVar:%d\n", result, firstVar, secVar);
    
    // 逻辑运算符
    // && || !
    /*
    result = 3 && 8;
    printf("result:%d\n", result);
    result = 0 && 8;
    printf("result:%d\n", result);
    result = -1 && 1;
    printf("result:%d\n", result);
    result = 3;
    printf("result:%d\n", result);
    result = 0 || 8;
    printf("result:%d\n", result);
    result = !3;
    printf("result:%d\n", result);
    result = !0;
    printf("result:%d\n", result);
    */
    // 关系运算符
    // > >= < <= != ==
    firstVar = 100;
    secVar = 200;
    result = firstVar > secVar;
    printf("result:%d\n", result);
    result = (firstVar == (secVar * 8));
    printf("result:%d\n", result);

    result = sizeof(secVar);     
    printf("result:%d\n", result);
    result = sizeof(int);
    printf("result:%d\n", result);

    // 三目运算符 ?
    
    result = (firstVar > secVar) ? firstVar : secVar;
    printf("result:%d\n", result);

    return 0;
}
