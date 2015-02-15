/*
 * ProjectEuler 009
 * C / main.c
 * copyright (c) 2015 Susisu
 *
 * GCC / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `gcc main.c -o bin/main`
 */

#include <stdio.h>

int main() {
    for (int a = 1; a <= 332; a++) {
        for (int b = a + 1; b < 1000 - a - b; b++) {
            if (2 * a * b - 2000 * (a + b) + 1000000 == 0) {
                printf("%d\n", a * b * (1000 - a - b));
                return 0;
            }
        }
    }
    return 0;
}
