#include <stdio.h>

int main(void)
{
    printf("Pls input the score:\n");
    int score;

    scanf("%d", &score);

    if (score >= 90 && score <= 100) {
        printf("优秀\n");
    } else if (score >= 80 && score <= 89) {
        printf("良好\n");
    } else if (score >= 70 && score <= 79) {
        printf("中等\n");
    } else if (score >=60 && score <= 69) {
        printf("及格\n");
    } else if (score >= 0 && score <60) {
        printf("不及格");
    } else {
        printf("无效的成绩\n");
    }

    return 0;
}
