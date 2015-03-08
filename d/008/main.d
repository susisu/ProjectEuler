/*
 * ProjectEuler 008
 * D / main.d
 * copyright (c) 2015 Susisu
 *
 * DMD 2.066
 * `dmd main.d -ofbin/main`
 */

import std.stdio;
import std.file;
import std.string;

void main() {
    int n = 13;
    string digits = chomp(readText("./digits.txt"));
    ulong l = digits.length;
    ulong max = 0;
    for (int i = 0; i <= l - n; i++) {
        ulong p = 1;
        for (int j = 0; j < n; j++) {
            p *= digitToInt(digits[i + j]);
        }
        if (p > max) {
            max = p;
        }
    }
    writeln(max);
}

int digitToInt(char d) {
    int n = d - '0';
    if (n < 0 || n >= 10) {
        return 0;
    }
    else {
        return n;
    }
}
