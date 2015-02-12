/*
 * ProjectEuler 005
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v0.12.0
 * `node main.js`
 */

function main() {
    var product = 1;
    for (var n = 1; n <= 20; n++) {
        product *= n / gcd(product, n);
    }
    console.log(product);
}

function gcd(m, n) {
    if (m < n) {
        return gcd(n, m);
    }
    else if (n === 0) {
        return m;
    }
    else {
        return gcd(n, m % n);
    }
}

main();
