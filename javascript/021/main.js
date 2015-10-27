/*
 * ProjectEuler 021
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

var N = 10000;

function main() {
    var sum = 0;
    var memo = [];
    for (var i = 2; i < N; i++) {
        memo[i] = d(i);
        if (i !== memo[i] && i === memo[memo[i]]) {
            sum += i + memo[i];
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
