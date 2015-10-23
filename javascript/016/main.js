/*
 * ProjectEuler 016
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

function main() {
    var n = [1];
    var i;
    for (i = 0; i < 1000; i++) {
        n = doubleBigNum(n);
    }
    var sum = 0;
    for (i = 0; i < n.length; i++) {
        sum += n[i];
    }
    console.log(sum);
}

function doubleBigNum(x) {
    var res = [];
    var u = 0;
    for (var i = 0; i < x.length; i++) {
        var n = x[i] * 2 + u;
        res[i] = n % 10;
        u = Math.floor(n / 10);
    }
    if (u > 0) {
        res[x.length] = u;
    }
    return res;
}

main();
