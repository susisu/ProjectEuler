/*
 * ProjectEuler 008
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v0.12.0
 * `node main.js`
 */

var fs = require("fs");

function main() {
    var buffer = fs.readFileSync("./digits.txt");
    var digits = buffer.toString().split("\n")[0].split("").map(function (digit) { return parseInt(digit); });
    var max = 0;
    var n = 13;
    for (var i = 0; i <= digits.length - n; i++) {
        var product = 1;
        for (var j = 0; j < n; j++) {
            product *= digits[i + j];
        }
        if (product > max) {
            max = product;
        }
    }
    console.log(max);
}

main();
