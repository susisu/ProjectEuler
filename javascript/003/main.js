/*
 * ProjectEuler 003
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v0.12.0
 * `node main.js`
 */

function main() {
    var n = 600851475143;
    for (var m = 2; m <= n; m++) {
        if (n % m === 0) {
            while (n % m === 0) {
                n /= m;
            }
        }
        if (n === 1) {
            console.log(m);
            break;
        }
    }
}

main();
