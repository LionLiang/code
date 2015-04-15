#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    FILE *fp;
    char ch;

    // 打开文件
    fp = fopen("./fgetcDemo", "w+");
    if (fp == NULL) {
        perror("foep");
        exit(1);
    }

    // 提示用户输入
    printf("请输入：\n");

    // 写文件的过程：先从屏幕输入中获取用户输入的字符，然后逐个写入到文件中去，直到遇到换行再结束
    ch = fgetc(stdin);
    while (ch != '\n') {
        fputc(ch, fp);
        ch = fgetc(stdin);
    }

    // 再把该文件读出来
    rewind(fp); // 使用rewind方法确保再次读取的时候从文件开头开始
    ch = fgetc(fp);
    //printf("ch=======%d",ch);
    while (ch != EOF) {
        // putchar(ch);
        fputc(ch, stdout);
        ch = fgetc(fp);
    }


    // 关闭文件：
    fclose(fp);

    return 0;
}
