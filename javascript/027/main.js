/*
 * ProjectEuler 027
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    var max = 0;
    var abmax = 0;
    var ps = primes(1000);
    for (var i = 0; i < ps.length; i++) {
        for (var a = -999; a < 1000; a++) {
            var b = ps[i];
            var n = 0;
            var q = b;
            while (q > 0 && isPrime(q)) {
                n++;
                q = n * n + a * n + b;
            }
            if (n > max) {
                max = n;
                abmax = a * b;
            }
        }
    }
    console.log(abmax);
}

function primes(n) {
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
    var ps = [];
    for (i = 0; i < n; i++) {
        if (table[i]) {
            ps.push(i);
        }
    }
    return ps;
}

function isPrime(n) {
    var r = Math.sqrt(n);
    for (var i = 2; i <= r; i++) {
        if (n % i === 0) {
            return false;
        }
    }
    return true;
}

main();
