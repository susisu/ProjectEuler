/*
 * ProjectEuler 001
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v0.12.0
 * `node main.js`
 */

function main() {
    var sum = 0;
    for (var n = 1; n < 1000; n++) {
        if (n % 3 === 0 || n % 5 === 0) {
            sum += n;
        }
    }
    console.log(sum);
}

main();
