/*
 * ProjectEuler 042
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

var fs = require("fs");

function main() {
    fs.readFile("./words.txt", { "encoding": "utf8" }, function (err, res) {
        if (err) {
            console.error(err);
            process.exit(1);
            return;
        }
        var words =
            res.split("\n")[0]
                .split(",")
                .map(word => word.slice(1, -1))
                .map(wordValue)
                .filter(isTriangle);
        console.log(words.length);
    })
}

var CHAR_A = "A".charCodeAt(0);

function wordValue(word) {
    var value = 0;
    for (var i = 0; i < word.length; i++) {
        value += word.charCodeAt(i) - CHAR_A + 1;
    }
    return value;
}

function isTriangle(n) {
    var t = n * 2;
    var r = Math.sqrt(t);
    for (var i = 1; i < t; i++) {
        if (t % i === 0 && t / i === i + 1) {
            return true;
        }
    }
    return false;
}

main();
