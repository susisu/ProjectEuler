/*
 * ProjectEuler 033
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    var n = 1;
    var d = 1;
    for (var i = 1; i <= 9; i++) {
        for (var a = 1; a <= 9; a++) {
            for (var b = a + 1; b <= 9; b++) {
                if (a !== b && a * (b * 10 + i) === b * (a * 10 + i)) {
                    n *= a * 10 + i;
                    d *= b * 10 + i;
                }
                if (a !== b && a * (i * 10 + b) === b * (i * 10 + a)) {
                    n *= i * 10 + a;
                    d *= i * 10 + b;
                }
                if (!(a == b && a == i) && a * (i * 10 + b) === b * (a * 10 + i)) {
                    n *= a * 10 + i;
                    d *= i * 10 + b;
                }
                if (!(a == b && a == i) && a * (b * 10 + i) === b * (i * 10 + a)) {
                    n *= i * 10 + a;
                    d *= b * 10 + i;
                }
            }
        }
    }
    console.log(d / gcd(n, d));
}

function gcd(a, b) {
    if (a < b) {
        return gcd(b, a);
    }
    else if (b === 0) {
        return a;
    }
    else {
        return gcd(b, a % b);
    }
}

main();
