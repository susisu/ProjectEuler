/*
 * ProjectEuler 025
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    var n = 2;
    while (Math.floor(approxLog10Fib(n)) + 1 < 1000) {
        n++;
    }
    console.log(n);
}

var alpha = (1 + Math.sqrt(5)) / 2;
// var beta  = (1 - Math.sqrt(5)) / 2;

// function fib(n) {
//     return (Math.pow(alpha, n) - Math.pow(beta, n)) / Math.sqrt(5);
// }

function approxLog10Fib(n) {
    return n * Math.log(alpha) / Math.log(10) - Math.log(5) / Math.log(10) / 2;
}

main();
