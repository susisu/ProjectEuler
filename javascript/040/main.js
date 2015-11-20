/*
 * ProjectEuler 040
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    var p = 1;
    for (var i = 0; i <= 6; i++) {
        p *= d(Math.pow(10, i));
    }
    console.log(p);
}

function d(n) {
    var e = 0;
    while (n - (e + 1) * 9 * Math.pow(10, e) > 0) {
        n -= (e + 1) * 9 * Math.pow(10, e);
        e++;
    }
    var q = Math.floor((n - 1) / (e + 1));
    var r = (n - 1) % (e + 1);
    var x = Math.floor((Math.pow(10, e) + q) / Math.pow(10, e - r)) % 10;
    return x;
}

main();
