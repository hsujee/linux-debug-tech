#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int data[2] = {1, 2};

int get_index(void)
{
    return  -256;
}


int main(void)
{
    int index = get_index();
    memset(data, 0, index);
    printf("This is a message\n");
    return EXIT_SUCCESS;
}
