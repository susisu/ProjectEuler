/*
 * ProjectEuler 008
 * C / main.c
 * copyright (c) 2015 Susisu
 *
 * GCC / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `gcc main.c -o bin/main`
 */

#include <stdio.h>

#define DIGITS_MAX_LENGTH 1024
#define N 13

int digitToInt(char c) {
    int n = c - '0';
    if (n < 0 || 10 <= n) {
        return 0;
    }
    else {
        return n;
    }
}

int main() {
    FILE* fp;
    char digits[DIGITS_MAX_LENGTH];
    fp = fopen("./digits.txt", "r");
    if (fp == NULL) {
        fprintf(stderr, "could not open file\n");
        return 1;
    }
    fgets(digits, DIGITS_MAX_LENGTH, fp);
    fclose(fp);

    long long max = 0;
    for (int i = 0; i <= DIGITS_MAX_LENGTH - N; i++) {
        long long p = 1;
        for (int j = 0; j < N; j++) {
            p *= digitToInt(digits[i + j]);
        }
        if (p > max) {
            max = p;
        }
    }
    printf("%lld\n", max);
    return 0;
}
