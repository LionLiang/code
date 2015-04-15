p#include<stdio.h>

//const 代表的不变的意思， 对于程序设计来说就是常量
int main (int argc, const char *argv[])
{
    int myInt = 100;
    printf("myInt's value is %d\n",myInt);
    myInt = 200;
    printf("after modify myInt's value is %d\n",myInt);

    //如果用const来修改变量？
    //const int kMyInt = 1000; 常见的写法， 
    int const kMyInt = 1000;//不常用
    //以下两种写法都是正确的
    printf("kMyInt's value is %d\n",kMyInt);
    //在这里是编译错误， 因为在声明变量kMyInt的时候， 用了const来修饰， 表示kMyInt的值是不可变的，inti
    //kMyInt = 200;
    //printf("after modify kMyInt's value is %d\n",kMyInt);

    //int *pInt = &myInt;
    //const int *pInt = &myInt; //const修饰＊pInt 就是说指针指向的地址里面的内容不能修改，如要*pInt = 300 是无法通过编译的
    //
    //
    //int const *pInt = &myInt; //与上述表现功能是一样的， 只是前者是通用写法 指针常量
    //
    int * const pInt = &myInt;//常量指针 pInt是一个不变常量， 它不能再指向其它变量地址。

    //如何记忆const， 以*号为界， 如果const放在*号左边，不是类型前， 还是类型后，都是指针常量， 用于修饰指针所指向的内容不能更改。如果放在*号右边， 表示修改的是指针本身不能更改， 叫做常量指针， 其含义就是指针不能再指向其它变量。
    printf("the *pInt's value is %d\n",*pInt);

    int anotherInt = 1000;
    pInt = &anotherInt;
    printf("after modify the *pInt's value is %d\n",*pInt);

    *pInt = 2000;
    printf("after modify the *pInt's=2000 value %d\n",*pInt);


    return 0;
}
