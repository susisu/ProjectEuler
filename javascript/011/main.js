/*
 * ProjectEuler 011
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

var fs = require("fs");

function main() {
    fs.readFile("./numbers.txt", { "encoding": "UTF-8" }, function (err, res) {
        if (err) {
            console.log(err);
            return;
        }
        var numbers =
            res.split("\n")
                .filter(function (line) { return line.length > 0; })
                .map(function (line) {
                    return line.split(/\s/).map(function (x) { return parseInt(x); });
                });
        var size = numbers.length;
        var i, j, k;
        var p, max = 0;
        for (i = 0; i <= size - 4; i++) {
            for (j = 0; j < size; j++) {
                p = 1;
                for (k = 0; k < 4; k++) {
                    p *= numbers[i + k][j];
                }
                if (p > max) {
                    max = p;
                }
            }
        }
        for (i = 0; i < size; i++) {
            for (j = 0; j <= size - 4; j++) {
                p = 1;
                for (k = 0; k < 4; k++) {
                    p *= numbers[i][j + k];
                }
                if (p > max) {
                    max = p;
                }
            }
        }
        for (i = 0; i <= size - 4; i++) {
            for (j = 0; j <= size - 4; j++) {
                p = 1;
                for (k = 0; k < 4; k++) {
                    p *= numbers[i + k][j + k];
                }
                if (p > max) {
                    max = p;
                }
            }
        }
        for (i = 0; i <= size - 4; i++) {
            for (j = 3; j < size; j++) {
                p = 1;
                for (k = 0; k < 4; k++) {
                    p *= numbers[i + k][j - k];
                }
                if (p > max) {
                    max = p;
                }
            }
        }
        console.log(max);
    });
}

main();
