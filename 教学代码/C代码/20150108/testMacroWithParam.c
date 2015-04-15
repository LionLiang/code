#include<stdio.h>

#define ABS(X) (X)<0 ?-(X):(X)
#define SUM(X,Y) X + Y


#define MAX(X,Y) (X)>(Y)?(X):(Y)
#define MUL(X,Y) (X) * (Y)

#define SECONDS_PER_YEAR (60*60*24*365)UL

int main (int argc, const char *argv[])
{
    int result = ABS(10); 
    int result2 = ABS(-10);


    int ret = SUM(100,200);
    int ret2 = SUM(100+2*3 + 100,200);
    printf("the ret's value is %d\n",ret);
    printf("%d,%d",result, result2);

    //printf("the ret's value is %d\n");

    printf("the max value is %d\n",MAX(100,200));

    printf("the max value is %d\n",MAX(600+400,300+200));

    printf("the mul value is %d\n",MUL(600+400,300+200));
    int a = 200;
    int b = 300;

   int maxRes =  MAX(a++,b++);

   printf("the result value is %d\n",maxRes);


   long int a = SECONDS_PER_YEAR;


    return 0;
}
