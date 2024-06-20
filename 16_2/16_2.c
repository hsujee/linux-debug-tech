#include <stdio.h>

void recursive_function()
{
    recursive_function(); // 递归调用自身
}

int main()
{
    recursive_function(); // 调用递归函数
    return 0;
}
