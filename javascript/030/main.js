/*
 * ProjectEuler 030
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    // 9^5 = 59049
    // x * 9^5 < 10^x for all x > 6
    var sum = 0;
    for (var i = 2; i < 1e+7; i++) {
        var n = i;
        var s = 0;
        while (n > 0) {
            s += Math.pow(n % 10, 5);
            n = Math.floor(n / 10);
        }
        if (s === i) {
            sum += s;
        }
    }
    console.log(sum);
}

main();
