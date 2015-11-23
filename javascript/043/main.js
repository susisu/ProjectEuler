/*
 * ProjectEuler 043
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.1.0
 * `node main.js`
 */

"use strict";

function main() {
    var d = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    var p = [2, 3, 5, 7, 11, 13, 17];
    var sum = 0;
    while (d) {
        var ok = true;
        for (var i = 1; i <= 7; i++) {
            var n = d[i] * 100 + d[i + 1] * 10 + d[i + 2];
            if (n % p[i - 1] !== 0) {
                ok = false;
                break;
            }
        }
        if (ok) {
            sum += parseInt(d.join(""));
        }
        d = nextPermutation(d);
    }
    console.log(sum);
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
