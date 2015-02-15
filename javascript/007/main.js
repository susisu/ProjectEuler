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
    var n = 2;
    while (true) {
        if (isPrime(n)) {
            count++;
            if (count === 10001) {
                console.log(n);
                break;
            }
        }
        n++;
    }
}

function isPrime(n) {
    if (n <= 1) {
        return false;
    }
    else {
        var r = Math.sqrt(n);
        for (var m = 2; m <= r; m++) {
            if (n % m === 0) {
                return false;
            }
        }
        return true;
    }
}

main();
