/*
 * ProjectEuler 022
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

var fs = require("fs");

function main() {
    fs.readFile("./names.txt", { "encoding": "UTF-8" }, (err, res) => {
        if (err) {
            console.log(err);
            return;
        }
        var result =
            res.trim()
                .split(",")
                .map(name => name.slice(1, -1))
                .sort()
                .map((name, index) => calcScore(name) * (index + 1))
                .reduce((total, score) => total + score, 0);
        console.log(result);
    });
}

function calcScore(name) {
    return name.split("")
        .map(c => c.charCodeAt(0) - "A".charCodeAt(0) + 1)
        .reduce((total, score) => total + score, 0);
}

main();
