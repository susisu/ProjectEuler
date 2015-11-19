/*
 * ProjectEuler 038
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    var max = "";
    for (var m = 0; m <= 3; m++) {
        var h = 9 * Math.pow(10, m);
        var s = Math.pow(10, m) - 1;
        for (var t = 0; t <= s; t++) {
            var k = h + t;
            var n = 1;
            var str = "";
            while (str.length < 9) {
                str += (k * n).toString();
                n++;
            }
            if (isPandigital(str) && str > max) {
                max = str;
            }
        }
    }
    console.log(max);
}

function isPandigital(str) {
    return str.split("").sort().join("") === "123456789";
}

main();
