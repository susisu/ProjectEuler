/*
 * ProjectEuler 005
 * D / main.d
 * copyright (c) 2015 Susisu
 *
 * DMD 2.066
 * `dmd main.d -ofbin/main`
 */

import std.stdio;

void main() {
    int p = 1;
    for (int i = 1; i <= 20; i++) {
        p *= i / gcd(p, i);
    }
    writeln(p);
}

int gcd(int a, int b) {
    if (a < b) {
        return gcd(b, a);
    }
    else if (b == 0) {
        return a;
    }
    else {
        return gcd(b, a % b);
    }
}
