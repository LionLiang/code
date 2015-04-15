#include<stdio.h>


int main (int argc, const char *argv[])
{
    union {
        int myInt;
        char myChar;
    }myUnionVar;


    myUnionVar.myChar = 'b';

    printf("%d\n",myUnionVar.myInt);
    return 0;
}
