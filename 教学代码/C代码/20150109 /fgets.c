#include <stdio.h>
#include <stdlib.h>

#define strsize 30


int main(void)
{
    FILE *fp;
    char buf[strsize] = {0};
    
    int result=0;

    fp = fopen("fgetsFile", "w+");

    // 可以自己完善判断文件打开是否成功的逻辑
    //

    printf("请输入一个字符串：\n");
    if (fgets(buf, strsize, stdin) != NULL){
        buf[strsize-1] = '\0';

        printf("打印刚才输的字符串：\n");
        for (int i=0; i<strsize; i++){
            putchar(buf[i]);
            //fgetc(buf[i], stdout);
        }


        fputs(buf,fp);
        /*
        result = fputs(buf, fp);
        if (result == 0){
            perror("fputs");
        } else {
            printf("写入文件成功！");
        }
        */
    }
     
    fclose(fp);

    return 0;
}

