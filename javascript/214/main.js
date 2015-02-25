/*
 * ProjectEuler 214
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v0.12.0
 * `node main.js`
 */

function main () {
    var n = 40000000;

    var totient = new Array(n);
    var i, j;
    for (i = 0; i < n; i++) {
        totient[i] = i;
    }

    for (i = 2; i < n; i++) {
        if (totient[i] === i) {
            for (j = i; j < n; j += i) {
                totient[j] *= 1 - 1 / i;
            }
        }
        totient[i] = Math.round(totient[i]);
    }

    var sum = 0;
    for (i = 2; i < n; i++) {
        if (totient[i] === i - 1) {
            var chain = 1;
            j = i;
            while (j > 1) {
                j = totient[j];
                chain++;
            }
            if (chain === 25) {
                sum += i;
            }
        }
    }
    console.log(sum);
}

main();
