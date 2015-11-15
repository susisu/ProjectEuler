/*
 * ProjectEuler 035
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    var n = 1000000;
    var table = sieve(n);
    var count = 0;
    for (var i = 0; i < n; i++) {
        if (table[i]) {
            var isCP = true;
            var t = i;
            do {
                t = Math.floor(t / 10) + t % 10 * Math.pow(10, Math.floor(Math.log(i) / Math.log(10)));
                if (!table[t]) {
                    isCP = false;
                    break;
                }
            } while (t !== i);
            if (isCP) {
                count++;
            }
        }
    }
    console.log(count);
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


main();
