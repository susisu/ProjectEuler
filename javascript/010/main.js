/*
 * ProjectEuler 010
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v0.12.0
 * `node main.js`
 */

function main() {
    console.log(sumPrimesBelow(2000000));
}

function sumPrimesBelow(n) {
    if (n < 2) {
        return 0;
    }
    else {
        var isPrime = new Array(n);
        isPrime[0] = isPrime[1] = false;
        var i;
        for (i = 2; i < n; i++) {
            isPrime[i] = true;
        }
        var sum = 0;
        for (var p = 2; p < n; p++) {
            if (isPrime[p]) {
                for (i = p * p; i < n; i += p) {
                    isPrime[i] = false;
                }
                sum += p;
            }
        }
        return sum;
    }
}

main();
