#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    FILE *fpR, *fpW;
    char ch;
    
    // 打开需要操作的文件
    fpR = fopen("/etc/passwd", "r");
    fpW = fopen("./newpasswd", "w");

    if (fpR == NULL){
        perror("open fpR");
        exit(1);
    }

    if (fpW == NULL){
        perror("open fpW");
        exit(2);      
    }

    // 按字符读取文件
    ch = fgetc(fpR);
    while (ch != EOF){
        putchar(ch);
        // 单个字符写入，注意与putchar对比
        fputc(ch, fpW);
        ch = fgetc(fpR);
    }

    // 关闭刚才操作过的文件
    fclose(fpR);
    fclose(fpW);

    return 0;

}
