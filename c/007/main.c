/*
 * ProjectEuler 007
 * C / main.c
 * copyright (c) 2015 Susisu
 *
 * GCC / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `gcc main.c -o bin/main`
 */

#include <stdio.h>
#include <stdbool.h>
#include <math.h>

bool isPrime(n) {
    if (n <= 1) {
        return false;
    }
    else {
        int r = floor(sqrt(n));
        for (int m = 2; m <= r; m++) {
            if (n % m == 0) {
                return false;
            }
        }
        return true;
    }
}

int main() {
    int count = 0;
    int n = 2;
    while (true) {
        if (isPrime(n)) {
            count++;
            if (count == 10001) {
                printf("%d\n", n);
                break;
            }
        }
        n++;
    }
    return 0;
}
