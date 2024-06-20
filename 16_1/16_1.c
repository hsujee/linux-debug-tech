#include <stdio.h>

int main() {
    int* ptr = NULL;
    *ptr = 10;  // 将空指针解引用，导致分段错误

    return 0;
}
