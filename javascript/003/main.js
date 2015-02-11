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
    var p = 2;
    while (n > 1) {
        if (n % p === 0) {
            n /= p;
        }
        else {
            p++;
        }
    }
    console.log(p);
}

main();
