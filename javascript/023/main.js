/*
 * ProjectEuler 023
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

function main() {
    var abundants = new Set();
    for (var i = 1; i <= 28123; i++) {
        if (i < d(i)) {
            abundants.add(i);
        }
    }
    var sum = 0;
    for (var i = 1; i <= 28123; i++) {
        var possible = false;
        for (var a of abundants) {
            if (abundants.has(i - a)) {
                possible = true;
                break;
            }
        }
        if (!possible) {
            sum += i;
        }
    }
    console.log(sum);
}

function d(n) {
    var sum = 0;
    for (var i = 1; i < n; i++) {
        if (n % i == 0) {
            sum += i;
        }
    }
    return sum;
}

main();
