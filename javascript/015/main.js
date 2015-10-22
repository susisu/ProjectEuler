/*
 * ProjectEuler 015
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

function main() {
    console.log(combination(40, 20));
}

function combination(n, r) {
    var p = 1;
    for (var i = 1; i <= r; i++) {
        p *= n - r + i;
        p /= i;
    }
    return p;
}

main();
