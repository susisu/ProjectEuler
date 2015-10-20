/*
 * ProjectEuler 012
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

function main() {
    var n = 1;
    while (true) {
        var a = n,
            b = n + 1;
        if (n % 2 == 0) {
            a /= 2;
        }
        else {
            b /= 2;
        }
        var divs = [];
        var d = 2;
        while (a > 1) {
            while (a % d == 0) {
                a /= d;
                if (divs[d]) {
                    divs[d]++
                }
                else {
                    divs[d] = 1;
                }
            }
            d++;
        }
        d = 2;
        while (b > 1) {
            while (b % d == 0) {
                b /= d;
                if (divs[d]) {
                    divs[d]++;
                }
                else {
                    divs[d] = 1;
                }
            }
            d++;
        }
        var numDivs = 1;
        for (var i = 0; i < divs.length; i++) {
            if (divs[i]) {
                numDivs *= divs[i] + 1;
            }
        }
        if (numDivs > 500) {
            console.log(n * (n + 1) / 2);
            break;
        }
        n++;
    }
}

main();
