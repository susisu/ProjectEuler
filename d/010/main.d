/*
 * ProjectEuler 010
 * D / main.d
 * copyright (c) 2015 Susisu
 *
 * DMD 2.066
 * `dmd main.d -ofbin/main`
 */

import std.stdio;
import std.math;
import std.conv;

void main() {
    immutable int N = 2000000;
    bool[N] table;
    table[0] = false;
    table[1] = false;
    for (int i = 2; i < N; i++) {
        table[i] = true;
    }

    int r = to!int(sqrt(to!float(N)));
    for (int i = 2; i <= r; i++) {
        if (table[i]) {
            for (int j = i * i; j < N; j += i) {
                table[j] = false;
            }
        }
    }

    ulong total = 0;
    for (int i = 0; i < N; i++) {
        if (table[i]) {
            total += i;
        }
    }
    writeln(total);
}
