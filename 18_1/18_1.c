#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void func(void)
{
    char buffer[10];
    strcpy(buffer, "This is a long string that exceeds the buffer's size");
}

int main(void)
{
    func();
    return EXIT_SUCCESS;
}
