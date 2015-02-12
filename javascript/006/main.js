/*
 * ProjectEuler 006
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v0.12.0
 * `node main.js`
 */

function main() {
    var s = 0;
    var t = 0;
    for (var n = 1; n <= 100; n++) {
        s += n;
        t += n * n;
    }
    console.log(s * s - t);
}

main();
