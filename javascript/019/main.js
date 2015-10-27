/*
 * ProjectEuler 019
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

var days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

function main() {
    var count = 0;
    var day = 1;
    for (var y = 1900; y <= 2000; y++) {
        for (var m = 0; m <= 11; m++) {
            if (y >= 1901 && day == 0) {
                count++;
            }
            day += days[m];
            if (m == 1 && isLeap(y)) {
                day++;
            }
            day %= 7;
        }
    }
    console.log(count);
}

function isLeap(y) {
    return y % 4 == 0 && !(y % 100 == 0 && !(y % 400 == 0));
}

main();
