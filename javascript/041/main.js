/*
 * ProjectEuler 041
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    // pandigital numbers for n = 8, 9 are not prime (divisible by 3)
    var isPrime = sieve(1e7);
    var maxn = 0;
    var max = "";
    for (var n = 1; n <= 7; n++) {
        var p = new Array(n);
        for (var i = 0; i < n; i++) {
            p[i] = i + 1;
        }
        while (p) {
            var pn = p.join("");
            if (isPrime[pn] && n >= maxn && pn > max) {
                maxn = n;
                max  = pn;
            }
            p = nextPermutation(p);
        }
    }
    console.log(max);
}

function sieve(n) {
    var i, j;
    var table = new Array(n);
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

function nextPermutation(perm) {
    var i;
    for (i = perm.length - 1; i > 0; i--) {
        if (perm[i] > perm[i - 1]) {
            break;
        }
    }
    if (i == 0) {
        return null;
    }
    var xs = perm.slice(0, i),
        ys = perm.slice(i).reverse();
    var zs = span(n => n < perm[i - 1], ys);
    return xs.slice(0, -1)
            .concat(zs[1][0])
            .concat(zs[0])
            .concat(xs[xs.length - 1])
            .concat(zs[1].slice(1));
}

function span(func, array) {
    for (var i = 0; i < array.length; i++) {
        if (!func(array[i])) {
            return [array.slice(0, i), array.slice(i)];
        }
    }
    return [array, 0];
}

main();
