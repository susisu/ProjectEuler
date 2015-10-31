/*
 * ProjectEuler 024
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

function main() {
    var perm = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    for (var i = 0; i < 1000000 - 1; i++) {
        perm = nextPermutation(perm);
    }
    console.log(perm.join(""));
}

function nextPermutation(perm) {
    var i;
    for (i = perm.length - 1; i > 0; i--) {
        if (perm[i] > perm[i - 1]) {
            break;
        }
    }
    if (i == 0) {
        return null;
    }
    var xs = perm.slice(0, i),
        ys = perm.slice(i).reverse();
    var zs = span(n => n < perm[i - 1], ys);
    return xs.slice(0, -1)
            .concat(zs[1][0])
            .concat(zs[0])
            .concat(xs[xs.length - 1])
            .concat(zs[1].slice(1));
}

function span(func, array) {
    for (var i = 0; i < array.length; i++) {
        if (!func(array[i])) {
            return [array.slice(0, i), array.slice(i)];
        }
    }
    return [array, 0];
}

main();
