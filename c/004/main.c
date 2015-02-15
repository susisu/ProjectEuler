/*
 * ProjectEuler 004
 * C / main.c
 * copyright (c) 2015 Susisu
 *
 * GCC / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `gcc main.c -o bin/main`
 */

#include <stdio.h>
#include <stdbool.h>

bool isPalindrome(int n) {
    char s[24];
    int len = sprintf(s, "%d", n);
    for (int i = 0; i < len / 2; i++) {
        if (s[i] != s[len - 1 - i]) {
            return false;
        }
    }
    return true;
}

int main() {
    int max = 0;
    for (int a = 100; a < 1000; a++) {
        for (int b = 100; b < 1000; b++) {
            int p = a * b;
            if (isPalindrome(p) && p > max) {
                max = p;
            }
        }
    }
    printf("%d\n", max);
    return 0;
}
