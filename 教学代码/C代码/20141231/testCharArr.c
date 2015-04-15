#include <stdio.h>

int main(void)
{
/*
 * * 数组当做右值使用时，会被转换成指针
 *     -》字符数组当做右值使用时，会被转换成字符指针
 *   字符串当做右值使用时，会被转换成字符指针
 */


#if 0
    char arr[32] = {0};
#if 0
    arr[0] = 'a';
    arr[1] = 'b';
    arr[2] = 'c';
    arr[3] = 'd';
#endif

    for (int i = 0; i < 32; i++) {
        arr[i] = 97 + i;
    }

    for (int i = 0; i < 32; i++) {
        printf("%c ", arr[i]);
    }

    putchar('\n');
#else 

    char arr[32] = "hello world";
    for (int i = 0; i < 32; i++) {
        printf("%c ", arr[i]);
    }

    printf("%d\n", arr[4]);
    printf("%c\n", arr[11]);

//    arr = "hello students";

//    printf("%c\n", arr[9]);
    char *p = "hello, students";
    printf("%c\n", p[4]);
    printf("%c\n", "hello, students"[5]);
    printf("%c\n", *("hello, students"+5));

    printf("%s\n", "hello, qingyun!\n");
    printf("%s\n", p);
    printf("%s\n", arr);
    
#endif

    return 0;
}
