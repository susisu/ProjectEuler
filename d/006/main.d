/*
 * ProjectEuler 006
 * D / main.d
 * copyright (c) 2015 Susisu
 *
 * DMD 2.066
 * `dmd main.d -ofbin/main`
 */

import std.stdio;

void main() {
    int s = 0;
    int t = 0;
    for (int n = 1; n <= 100; n++) {
        s += n;
        t += n * n;
    }
    writeln(s * s - t);
}
