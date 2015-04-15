#include <stdio.h>

/*
 * switch(表达式) {
 *  case value1:
 *      语句1;
 *  case value2:
 *      语句2;
 *  default:
 *      语句;
 * }
 */

int main(void)
{
    enum WeekDays {
        Monday=1,
        Tuesday,
        Wednesday,
        Thursday,
        Friday,
        Saturday,
        Sunday
    } day;

//    enum WeekDays anotherDay;

    day = 18;    
    printf("%d\n", day);
    printf("sizeof(day):%lu\n", sizeof(day));

    printf("Please input the day today...\n");
    printf("1:Monday 2:Tuesday 3:Wendsday 4:Thursday 5:Friday 6:Saturday 7:Sunday\n");

    scanf("%d", &day);

    switch(day) {
        case Monday:
            printf("Today is Monday!\n");
            break;
        case Tuesday:
            printf("Today is Tuesday!\n");
            break;
        case Wednesday:
            printf("Today is Wendsday!\n");
            break;
        case Thursday:
            printf("Today is Thursday!\n");
            break;
        case Friday:
            printf("Today is Friday!\n");
            break;
        case Saturday:
            printf("Today is Saturday!\n");
            break;
        case Sunday:
            printf("Today is Sunday!\n");
            break;
        default:
            printf("Unknown day...\n");
            break;
    }
    return 0;
}
