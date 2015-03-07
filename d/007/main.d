/*
 * ProjectEuler 007
 * D / main.d
 * copyright (c) 2015 Susisu
 *
 * DMD 2.066
 * `dmd main.d -ofbin/main`
 */

import std.stdio;
import std.conv;
import std.math;

void main() {
    int counter = 0;
    int n = 2;
    while (true) {
        if (isPrime(n)) {
            counter++;
            if (counter == 10001) {
                writeln(n);
                break;
            }
        }
        n++;
    }
}

bool isPrime(int n) {
    if (n < 2) {
        return false;
    }
    else {
        float r = sqrt(to!float(n));
        for (int i = 2; i <= r; i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }
}
