/*
 * ProjectEuler 004
 * D / main.d
 * copyright (c) 2015 Susisu
 *
 * DMD 2.066
 * `dmd main.d -ofbin/main`
 */

import std.stdio;
import std.conv;

void main() {
    int max = 0;
    for (int i = 100; i < 1000; i++) {
        for (int j = i; j < 1000; j++) {
            int p = i * j;
            if (isPalindrome(p) && p > max) {
                max = p;
            }
        }
    }
    writeln(max);
}

bool isPalindrome(int n) {
    char[] s = to!(char[])(n);
    ulong l = s.length;
    ulong h = l / 2;
    for (int i = 0; i < l / 2; i++) {
        if (s[i] != s[l - 1 - i]) {
            return false;
        }
    }
    return true;
}
