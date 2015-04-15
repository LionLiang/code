#include <stdio.h>

int main(void)
{
    int *pointer = NULL;
    int var = 0;
    char c = 'x';
#if 0 
    pointer = &var;
    *pointer = 0xabcdef12;
    printf("0x%x\n", var);
#else
    pointer = (int *)&c;    
    *pointer = 0x41424344;
    char *p = &c;
    printf("<%p>\n", p);
    printf("%c\n", c);
    printf("<%p>: %c\n", p+1, *(p+1));
    printf("<%p>: %c\n", p+2, *(p+2));
    printf("<%p>: %c\n", p+3, *(p+3));
#endif



    return 0;
}
