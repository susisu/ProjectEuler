/*
 * ProjectEuler 013
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

var fs = require("fs");

function main() {
    fs.readFile("./numbers.txt", { "encoding": "UTF-8" }, function (err, src) {
        if (err) {
            console.log(err);
            return;
        }
        var res = src.split("\n")
            .filter(function (line) { return line.length > 0; })
            .map(function (line) {
                return line.split("")
                    .reverse()
                    .map(function (digit) { return parseInt(digit); });
                }
            )
            .reduce(function (accum, num) {
                return addBigNums(accum, num);
            }, [0])
            .slice(-10)
            .reverse()
            .join("");
        console.log(res);
    });
}

function addBigNums(x, y) {
    var lx = x.length,
        ly = y.length,
        l  = Math.max(lx, ly);
    var z = [];
    var u = 0;
    for (var i = 0; i < l; i++) {
        var n = (x[i] || 0) + (y[i] || 0) + u;
        z[i] = n % 10;
        u = Math.floor(n / 10);
    }
    if (u > 0) {
        z[l] = u;
    }
    return z;
}

main();
