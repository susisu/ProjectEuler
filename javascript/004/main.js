/*
 * ProjectEuler 004
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v0.12.0
 * `node main.js`
 */

function main() {
    var max = 0;
    for (var x = 100; x <= 999; x++) {
        for (var y = x; y <= 999; y++) {
            var p = x * y;
            if (isPalindromic(p) && p > max) {
                max = p;
            }
        }
    }
    console.log(max);
}

function isPalindromic(n) {
    var s = n.toString();
    return s === s.split("").reverse().join("");
}

main();
