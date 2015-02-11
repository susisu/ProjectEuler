/*
 * ProjectEuler 002
 * C / main.c
 * copyright (c) 2015 Susisu
 *
 * GCC / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `gcc main.c -o bin/main`
 */

#include <stdio.h>

int main() {
    int sum = 0;
    int a = 0;
    int b = 1;
    while (a <= 4000000) {
        int t = a;
        a     = b;
        b    += t;
        if (a % 2 == 0) {
            sum += a;
        }
    }
    printf("%d\n", sum);
    return 0;
}
