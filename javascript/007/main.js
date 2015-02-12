/*
 * ProjectEuler 007
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v0.12.0
 * `node main.js`
 */

function main() {
    var count = 0;
    var p = 0;
    var n = 2;
    while (count < 10001) {
        var r = Math.sqrt(n);
        var isPrime = true;
        for (var m = 2; m <= r; m++) {
            if (n % m === 0) {
                isPrime = false;
                break;
            }
        }
        if (isPrime) {
            p = n;
            count++;
        }
        n++;
    }
    console.log(p);
}

main();
