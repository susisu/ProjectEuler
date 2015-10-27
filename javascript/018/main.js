/*
 * ProjectEuler 018
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
        var nums = res.split("\n")
            .filter(function (line) { return line.length > 0; })
            .map(function (line) {
                return line.split(" ")
                    .map(function (num) { return parseInt(num); });
            });
        for (var i = 1; i < nums.length; i++) {
            var row = nums[i];
            for (var j = 0; j < row.length; j++) {
                if (j == 0) {
                    row[j] += nums[i - 1][j];
                }
                else if (j < row.length - 1) {
                    row[j] += Math.max(nums[i - 1][j], nums[i - 1][j - 1]);
                }
                else {
                    row[j] += nums[i - 1][j - 1];
                }
            }
        }
        var max = Math.max.apply(undefined, nums[nums.length - 1]);
        console.log(max);
    });
}

main();
