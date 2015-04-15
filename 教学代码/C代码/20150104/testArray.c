#include<stdio.h>


int main (int argc, const char *argv[])
{
    int array[5] = {0};
    int anotherArray[5] = {0};

    char cArray[5] = {'a'};
    char *pcArray = cArray;

    int *pArray = array;

    for (int i = 0; i < 5; i++)
    {
        printf("%d,%d\n",array[i],anotherArray[i]);
    }

    printf("user pointer visit the array element\n");

    for (int i = 0; i < 5; i++)
    {
        printf("%d\n",*pArray);
        pArray++;
    }

    int nSizeArray = sizeof (array);
    printf("the arrasy's size is %d\n",nSizeArray);


    int nSizePArray =  sizeof(pArray);
    printf("the pArray's size is %d\n",nSizePArray);

    int nSizeCArray = sizeof(cArray);
    printf("the cArray's size is %d\n",nSizeCArray);

    int nSizePCArray = sizeof(pcArray);
    printf("the pcArray's size is %d\n",nSizePCArray);

    return 0;
}
