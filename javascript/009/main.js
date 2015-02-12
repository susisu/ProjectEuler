/*
 * ProjectEuler 009
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v0.12.0
 * `node main.js`
 */

function main() {
    for (var a = 1; a <= 332; a++) {
        for (var b = a + 1; b < 1000 - a - b; b++) {
            if (2 * a * b - 2000 * (a + b) + 1000000 === 0) {
                console.log(a * b * (1000 - a - b));
                return;
            }
        }
    }
}

main();
