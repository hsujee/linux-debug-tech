#include <stdio.h>
#include <stdlib.h>
#include <strings.h>

int arr[2] = {1, 2};

int get_index(void)
{
    return  -256;
}


int main(void)
{
    int index = get_index();
    arr[index] = 0x0a;
    arr[index+1] = 0x08;
    printf("This is a message\n");
    return EXIT_SUCCESS;
}
