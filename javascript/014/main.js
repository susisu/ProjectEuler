/*
 * ProjectEuler 014
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

function main() {
    var n = 1000000;
    var memo = new Array(n);
    var i;
    for (i = 0; i < n; i++) {
        memo[i] = 0;
    }
    memo[1] = 1;
    var maxi = 0,
        maxc = 0;
    for (i = 2; i < n; i++) {
        var m = i,
            c = 1;
        while (m > 1) {
            if (m % 2 == 0) {
                m /= 2;
            }
            else {
                m = 3 * m + 1;
            }
            if (memo[i] > 0) {
                c += memo[i];
                break;
            }
            c++;
        }
        memo[i] = c;
        if (c > maxc) {
            maxi = i;
            maxc = c;
        }
    }
    console.log(maxi);
}

main();
