#include <stdio.h>

int main(void)
{
//    int hack[9000000];

//    int arr[10] = {0, 1, 2, 3, 4};
    int arr[10] = {0};    
    int *p = arr; // int *p =  &arr[0];

    printf("%d\n", arr[3]);
    printf("%d\n", *(arr+3));
    printf(">>%d\n", *(arr+1));
    printf("%d\n", *(p+3));
    printf("%d\n", p[3]);
//    printf("%d\n", arr[-100]);
    printf("%d\n", arr[9]);
//    printf("%d\n", arr[100]);

//    arr[100000] = 10;
//        
    for (int i = 0; i < 10; i++) {
    
        printf("%d ", arr[i]);
    }
    return 0;
}
