/*
 * ProjectEuler 005
 * C / main.c
 * copyright (c) 2015 Susisu
 *
 * GCC / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `gcc main.c -o bin/main`
 */

#include <stdio.h>

int gcd(int a, int b) {
    if (a < b) {
        return gcd(b, a);
    }
    else if (b == 0) {
        return a;
    }
    else {
        return gcd(b, a % b);
    }
}

int main() {
    int prod = 1;
    for (int n = 1; n <= 20; n++) {
        prod *= n / gcd(prod, n);
    }
    printf("%d\n", prod);
    return 0;
}
