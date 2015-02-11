/*
 * ProjectEuler 003
 * C / main.c
 * copyright (c) 2015 Susisu
 *
 * GCC / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `gcc main.c -o bin/main`
 */

#include <stdio.h>

int main() {
    long n = 600851475143;
    long p = 2;
    while (n > 1) {
        if (n % p == 0) {
            n /= p;
        }
        else {
            p++;
        }
    }
    printf("%ld\n", p);
    return 0;
}
