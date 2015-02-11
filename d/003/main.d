/*
 * ProjectEuler 003
 * D / main.d
 * copyright (c) 2015 Susisu
 *
 * DMD 2.066
 * `dmd main.d -ofbin/main`
 */

import std.stdio;

void main() {
    long n = 600851475143;
    long p = 2;
    while (n > 1) {
        if (n % p == 0) {
            n /= p;
        }
        else {
            p++;
        }
    }
    writeln(p);
}
