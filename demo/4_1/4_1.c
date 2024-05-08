#include <stdio.h>
#include <stdlib.h>
#define MAX (1UL << 20)

int count = MAX;

int sum(int n) {

    int sumv;
    n++;
    sumv = n;

    if (n < count)
            sumv += sum(n);

    return sumv; 
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("请提供一个整数作为参数，表示累加的个数。\n");
        return 1;
    }

    count = atoi(argv[1]);
    if (count <= 0) {
        printf("参数必须是一个正整数。\n");
        count = MAX;
    }

    int rel = sum(0);
    printf("0 ... %d 的累加结果为：%d\n", count, rel);

    return 0;
}
