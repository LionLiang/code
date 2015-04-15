#include <stdio.h>
#include <stdlib.h>

void foo(void)
{
    printf("%s\n", __func__);
    return;
//    exit(1);    
}

int main(void)
{
    foo();

    printf("%s", __func__);

//    return 1;
    exit(0);    
}
