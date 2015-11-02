/*
 * ProjectEuler 026
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

function main() {
    var max = 0;
    var dmax = 0;
    for (var d = 2; d < 1000; d++) {
        var r = rec(d);
        if (r > max) {
            max  = r;
            dmax = d;
        }
    }
    console.log(dmax);
}

function rec(d) {
    var o = Math.pow(10, Math.floor(Math.log(d) / Math.log(10)) + 1);
    var n = o;
    var memo = new Array(d + 1);
    while (true) {
        var j = Math.floor(n / d);
        if (memo[j] !== undefined) {
            return memo[j];
        }
        memo[j] = 0;
        n = (n % d) * o;
        if (n === 0) {
            return 0;
        }
        for (var i = 0; i <= d; i++) {
            if (memo[i] !== undefined) {
                memo[i]++;
            }
        }
    }
}


main();
