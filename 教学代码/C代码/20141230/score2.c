#include <stdio.h>

int main(void)
{
    printf("Pls input the score:\n");
    int score;
    int errCount = 0;
#if 0
_INPUT:
    scanf("%d", &score);
    // 校验用户输入 

    if (score > 100 || score < 0) {
        printf("Pls input valid score [0 - 100]\n");
        goto _INPUT;
    }
#else
    scanf("%d", &score);

    // 校验用户输入
    while(score < 0 || score > 100) {
        if (++errCount >= 3) {
            printf("Error too much times!\n");
            return 1;
        }
        printf("Pls input valid score [0 - 100]\n");
        scanf("%d", &score);
    }

#endif
    
    int grade = score / 10;
    switch(grade) {
        case 10:
        case 9:
            printf("优秀\n");
            break;
        case 8:
            printf("良好\n");
            break;
        case 7:
            printf("中等\n");
            break;
        case 6:
            printf("及格\n");
            break;
        default:
            printf("不合格\n");
            break;
    }
}
