#include <stdio.h>

#define LINENUM 5

int main(void)
{
    int i = 0; // 控制打印多少行
    int j = 0; // 控制每行打印多少个星号

    for (i = 0; i < LINENUM; i++) {
        // 打印星星
        for (j = 0; j < i+1; j++) {
            putchar('*');
        }
        putchar('\n');
    }
    return 0;
}
