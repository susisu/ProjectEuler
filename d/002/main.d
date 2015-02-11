/*
 * ProjectEuler 002
 * D / main.d
 * copyright (c) 2015 Susisu
 *
 * DMD 2.066
 * `dmd main.d -ofbin/main`
 */

import std.stdio;

void main() {
    int sum = 0;
    int a = 0;
    int b = 1;
    while (a <= 4000000) {
        int t = a;
        a     = b;
        b    += t;
        if (a % 2 == 0) {
            sum += a;
        }
    }
    writeln(sum);
}
