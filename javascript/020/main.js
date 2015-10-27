/*
 * ProjectEuler 020
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

function main() {
    var n = [1];
    for (var i = 1; i <= 100; i++) {
        n = multiple(
            n,
            i.toString()
                .split("")
                .reverse()
                .map(function (d) { return parseInt(d); })
        );
    }
    var sum = 0;
    for (i = 0; i < n.length; i++) {
        sum += n[i];
    }
    console.log(sum);
}

function multiple(x, y) {
    var res = [];
    for (var i = 0; i < x.length; i++) {
        var u = 0;
        for (var j = 0; j < y.length; j++) {
            var p = (res[i + j] === undefined ? 0 : res[i + j]) + x[i] * y[j] + u;
            res[i + j] = p % 10;
            u = Math.floor(p / 10);
        }
        if (u > 0) {
            res[i + y.length] = u;
        }
    }
    return res;
}

main();
