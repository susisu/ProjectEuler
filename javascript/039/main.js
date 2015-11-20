/*
 * ProjectEuler 039
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    // p = a + b + c <= 1000
    // a^2 + b^2 = c^2
    // 0 < a <= b < c
    // -> a <= 333, b < 1000 - a - b
    var maxP = 1000;
    var numSolutions = [];
    var i;
    for (i = 0; i <= maxP; i++) {
        numSolutions[i] = 0;
    }
    for (var a = 1; a <= 333; a++) {
        for (var b = a; b < maxP - a - b; b++) {
            var cSquare = a * a + b * b;
            var c = Math.round(Math.sqrt(cSquare));
            // Is c an integer?
            if (Math.pow(c, 2) === cSquare) {
                var p = a + b + c;
                if (p <= maxP) {
                    numSolutions[p]++;
                }
            }
        }
    }
    var maxNumSolutions = 0;
    var maxNumSolutionsP = 0;
    for (i = 0; i <= maxP; i++) {
        if (numSolutions[i] > maxNumSolutions) {
            maxNumSolutions  = numSolutions[i];
            maxNumSolutionsP = i;
        }
    }
    console.log(maxNumSolutionsP);
}

main();
