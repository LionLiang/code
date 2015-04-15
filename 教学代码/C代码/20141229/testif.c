#include <stdio.h>

int main(void)
{
    /*
     * if (表达式)
     *     语句;
     * else
     *     语句;
     */

    int isGoodWeather;
    int need2Study;

    isGoodWeather = 1;
    need2Study = 1;

    if (isGoodWeather && !need2Study)
        printf("Let's play!\n");
        printf("Let's happy!\n");

    
    if (!isGoodWeather && !need2Study) {
        printf("宅着\n");
        printf("玩游戏\n");
        printf("看电影\n");
    } else {
        printf("Not good!\n");
    }

    int var = 10;
    if (var > 3) {
        if (var < 20) {
            printf("var is less than 20!\n");
        }
    }

   if (var > 3 && var < 20) {
        printf("var is between 3 and 20!\n");
   } 

    var = 2;
    if (var > 3) { 
        if (var < 20) 
            printf("var is less than 20!\n");
    }
    else
        printf("var is less than 3!\n");   
    

    printf("--->Over<---\n");

    return 0;
}
