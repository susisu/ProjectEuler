/*
 * ProjectEuler 028
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    var L = 1001;
    var n = (L + 1) / 2;
    var k = 0;
    var sum = 0;
    for (var i = 0; i < n; i++) {
        k += 1;
        if (i == 0) {
            sum += k;
            continue;
        }
        var l = 2 * i + 1;
        k += l - 2; // SE
        sum += k;
        k += l - 1; // SW
        sum += k;
        k += l - 1; // NW
        sum += k;
        k += l - 1; // NE
        sum += k;
    }
    console.log(sum);
}


main();
