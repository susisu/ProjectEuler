/*
 * ProjectEuler 006
 * C / main.c
 * copyright (c) 2015 Susisu
 *
 * GCC / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `gcc main.c -o bin/main`
 */

#include <stdio.h>

int main() {
    int s = 0;
    int t = 0;
    for (int n = 1; n <= 100; n++) {
        s += n;
        t += n * n;
    }
    printf("%d\n", s * s - t);
    return 0;
}
