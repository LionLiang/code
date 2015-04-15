#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    FILE *fp;

    // w代表写入模式
    // r代表读取模式
    // a代表追加模式
    // 三种模式后面都可以加个+号表示兼容读写
    fp = fopen("/etc/passwd", "r");
qqqqqqqquuuuen");
        //printf("this file no exist\n");
        exit(1);
    } 
    printf("open success\n");

    // 记住一定要在文件操作完成之后关闭文件
    fclose(fp);

    return 0;
}
htjjhgyuj


uhff