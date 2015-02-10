/*
 * ProjectEuler 001
 * C / main.c
 * copyright (c) 2015 Susisu
 *
 * GCC / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `gcc main.c -o bin/main`
 */

#include <stdio.h>

int main() {
    int sum = 0;
    int n;
    for (n = 0; n < 1000; ++n) {
        if (n % 3 == 0 || n % 5 == 0) {
            sum += n;
        }
    }
    printf("%d\n", sum);
    return 0;
}
