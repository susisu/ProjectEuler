/*
 * ProjectEuler 037
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    // determine n such that count = 11
    var n = 1E+6;
    var isPrime = sieve(n);
    var sum = 0;
    var count = 0;
    for (var i = 10; i < n; i++) {
        if (isPrime[i]) {
            var isTruncatable = (function (p) {
                var t = p;
                while (t > 0) {
                    if (!isPrime[t]) {
                        return false;
                    }
                    t = truncateL2R(t);
                }
                t = p;
                while (t > 0) {
                    if (!isPrime[t]) {
                        return false;
                    }
                    t = truncateR2L(t);
                }
                return true;
            })(i);
            if (isTruncatable) {
                sum += i;
                count++;
            }
        }
    }
    console.log(count, sum);
}

function sieve(n) {
    var table = new Array(n);
    var i, j;
    table[0] = false;
    table[1] = false;
    for (i = 2; i < n; i++) {
        table[i] = true;
    }
    var r = Math.sqrt(n);
    for (i = 2; i <= r; i++) {
        if (table[i]) {
            for (j = i * i; j < n; j += i) {
                table[j] = false;
            }
        }
    }
    return table;
}

function truncateL2R(n) {
    return n % Math.pow(10, Math.floor(Math.log(n) / Math.log(10)));
}

function truncateR2L(n) {
    return Math.floor(n / 10);
}

main();
