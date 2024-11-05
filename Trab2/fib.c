#include <stdio.h>
#include <stdlib.h>

__uint64_t fatorial (int n) {
    if (n == 0) {
        return 1;
    } else {
        return n * fatorial(n - 1);
    }
}

int main(int argc, char const *argv[])
{
    int n = 0;
    scanf("%d", &n);
    __uint64_t result = fatorial(n);
    printf("%lu\n", result);
    return 0;  
}
