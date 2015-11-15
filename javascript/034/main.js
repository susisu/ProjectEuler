/*
 * ProjectEuler 034
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    // 9! = 362880
    // For N > 7 * 9!, nothing can be written as a sum of the factorial of its digits
    var fact = [];
    for (var i = 0; i <= 9; i++) {
        fact[i] = factorial(i);
    }

    var sum = 0;
    for (var n = 3; n < 7 * fact[9]; n++) {
        var t = n;
        var fsum = 0;
        while (t > 0) {
            fsum += fact[t % 10];
            t = Math.floor(t / 10);
        }
        if (fsum === n) {
            sum += n;
        }
    }
    console.log(sum);
}

function factorial(n) {
    var p = 1;
    for (var i = 1; i <= n; i++) {
        p *= i;
    }
    return p;
}

main();
