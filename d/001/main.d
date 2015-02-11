/*
 * ProjectEuler 001
 * D / main.d
 * copyright (c) 2015 Susisu
 *
 * DMD 2.066
 * `dmd main.d -ofbin/main`
 */

import std.stdio;

void main() {
    int sum = 0;
    for (int n = 1; n < 1000; ++n) {
        if (n % 3 == 0 || n % 5 == 0) {
            sum += n;
        }
    }
    writeln(sum);
}
