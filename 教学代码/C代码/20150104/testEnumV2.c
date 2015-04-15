#include<stdio.h>
//根据用户的输入值， 来打印是星期几：
//比如说：如果用户输入0程序打印星期一， 如果输入1打印星期二，依次类推，直到打印出星期天。

enum weekDays
{
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
    Sunday
};

int main (int argc, const char *argv[])
{
    int inputValue;
    enum weekDays oneDay;
   do 
   {
        //打印内容， 提示用户需要输入值
        printf("Please input the value:\n");
        //让用户开始输入
        scanf("%d",&inputValue); 
        oneDay = inputValue;
        //根据用户输入的值，来确定到底打印什么内容
        //
         switch (oneDay)
         {
            case Monday:
                printf("work\n");
                break;
            case Tuesday:
                printf("play game\n");
                break;
            case Wednesday:
                printf("meeting\n");
                break;
            default:
                printf("input error\n");

        }
   } while (inputValue != 99);

    return 0;
}
