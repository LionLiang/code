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
    printf("Please input the day today...\n");
    printf("1:Monday 2:Tuesday 3:Wendsday 4:Thursday 5:Friday 6:Saturday 7:Sunday\n");

    int day;

    scanf("%d", &day);

    switch(day) {
        case 1:
            printf("Today is Monday!\n");
            break;
        case 2:
            printf("Today is Tuesday!\n");
            break;
        case 3:
            printf("Today is Wendsday!\n");
            break;
        case 4:
            printf("Today is Thursday!\n");
            break;
        case 5:
            printf("Today is Friday!\n");
            break;
        case 6:
            printf("Today is Saturday!\n");
            break;
        case 7:
            printf("Today is Sunday!\n");
            break;
        default:
            printf("Unknown day...\n");
            break;
    }
    return 0;
}
