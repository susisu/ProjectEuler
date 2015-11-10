/*
 * ProjectEuler 032
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

// 1 * 1000 = 1000
// 10 * 100 = 1000

function main() {
    var list = [];
    var a, b, c;
    for (a = 1; a < 10; a++) {
        for (b = 1000; b < 10000; b++) {
            if (isPandigital(a, b, a * b)) {
                list.push(a * b);
            }
        }
    }
    for (a = 10; a < 100; a++) {
        for (b = 100; b < 1000; b++) {
            if (isPandigital(a, b, a * b)) {
                list.push(a * b);
            }
        }
    }
    list.sort((x, y) => x - y);
    var sum = 0;
    var pre = NaN;
    for (var i = 0; i < list.length; i++) {
        if (pre !== list[i]) {
            sum += list[i];
        }
        pre = list[i];
    }
    console.log(sum);
}

function isPandigital(a, b, c) {
    var str = a.toString() + b.toString() + c.toString();
    return str.split("").sort().join("") === "123456789"
}

main();
