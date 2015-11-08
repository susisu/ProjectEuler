/*
 * ProjectEuler 029
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    var terms = [];
    for (var a = 2; a <= 100; a++) {
        for (var b = 2; b <= 100; b++) {
            terms.push(b * Math.log(a));
        }
    }
    terms.sort();

    var i;
    var pre = 0;
    var freqs = [];
    for (i = 0; i < terms.length; i++) {
        var d = Math.floor(-Math.log(Math.abs(terms[i] - pre)) / Math.log(10));
        if (0 <= d && d < Infinity) {
            if (freqs[d] === undefined) {
                freqs[d] = 0;
            }
            freqs[d]++;
        }
        pre = terms[i];
    }

    // assume that errors are sufficiently small
    var epsilon;
    for (i = 0; i < freqs.length; i++) {
        if (freqs[i] === undefined) {
            epsilon = Math.pow(10, -i);
            break;
        }
    }

    pre = 0;
    var count = 0;
    for (i = 0; i < terms.length; i++) {
        if (Math.abs(terms[i] - pre) > epsilon) {
            count++;
        }
        pre = terms[i];
    }
    console.log(count);
}


main();
