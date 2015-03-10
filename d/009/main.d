/*
 * ProjectEuler 009
 * D / main.d
 * copyright (c) 2015 Susisu
 *
 * DMD 2.066
 * `dmd main.d -ofbin/main`
 */

import std.stdio;

void main() {
    for (int a = 1; a <= 332; a++) {
        for (int b = a; b < 1000 - a - b; b++) {
            if (2 * a * b - 2000 * (a + b) + 1000000 == 0) {
                writeln(a * b * (1000 - a - b));
                return;
            }
        }
    }
}
