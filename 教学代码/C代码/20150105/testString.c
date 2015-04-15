#include<stdio.h>
#include<string.h>

int main (int argc, const char *argv[])
{
    char myCStr[18] = "hello,qingyun";
    char *thirdStr = "Jim";
    int sizeOfMyCstr = sizeof (myCStr);

    //char anotherCStr[20] = {'\0'};
    
    char anotherCStr[20];
    //将数组anotherCStr的内存空间全部清为0
    memset(anotherCStr,0x00,20);
    
    //在这里字符数组的大小是14, 但是字符串的长度是13
    //原因是：字符串必须以位模式全0的NUL结尾，所以存放字符串的
    //的内存空间要比字符串的长度大一个字节
    printf("the myCstr size is %d\n",sizeOfMyCstr);

    size_t  nMyCStrlen = strlen (myCStr);

    printf("the lenth of myCStr is %lu\n",nMyCStrlen);

    //这样的赋值是肯定不行的， 因为数组名字表示的数组的首地址， 
    //同时这个首地址，也是一个常量，所以不能如此赋值
    //anotherCStr = myCStr;

    printf("before strcpy the anohterCStr value is %s\n",anotherCStr);
    char *strRet = strcpy (anotherCStr,myCStr);

    printf("the result of strRet is %s.%p\n",strRet,strRet);
    printf("the value of anotherCStr is %s.%p\n",anotherCStr,anotherCStr);


    //因为myCStr是以位模式为全0开头的， 所以使用字符串库函数无法实现复制的功能
    //但是在一些场景下， 确实需要这样的动作，该如何做？
    //
    memcpy (anotherCStr,myCStr,15);
    printf("%s\n",anotherCStr);


    char *catStrRet = strcat (myCStr,thirdStr);
    printf("after strcat the myCStr value is %s\n",myCStr);
    printf("the catStrRet's value is %s\n",catStrRet);
    return 0;
}
