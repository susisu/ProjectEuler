/*
 * ProjectEuler 010
 * C / main.c
 * copyright (c) 2015 Susisu
 *
 * GCC / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `gcc main.c -o bin/main`
 */

#include <stdio.h>
#include <stdbool.h>
#include <math.h>

#define N 2000000

int main() {
    if (N < 2) {
        printf("0\n");
        return 0;
    }

    bool table[N];
    table[0] = false;
    table[1] = false;
    for (int i = 2; i < N; i++) {
        table[i] = true;
    }

    int r = floor(sqrt(N));
    for (int i = 2; i <= r; i++) {
        if (table[i]) {
            for (int n = i * i; n < N; n += i) {
                table[n] = false;
            }
        }
    }

    long long sum = 0;
    for (int i = 0; i < N; i++) {
        if (table[i]) {
            sum += i;
        }
    }
    printf("%lld\n", sum);
    return 0;
}
