/*
 * ProjectEuler 002
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v0.12.0
 * `node main.js`
 */

function main() {
    var sum = 0;
    var a   = 0;
    var b   = 1;
    while (a <= 4000000) {
        var t = a;
        a     = b;
        b    += t;
        if (a % 2 === 0) {
            sum += a;
        }
    }
    console.log(sum);
}

main();
