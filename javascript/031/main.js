/*
 * ProjectEuler 031
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    var coins = [200, 100, 50, 20, 10, 5, 2, 1];
    console.log(calc(coins, 200));
}

function calc(coins, rest) {
    if (rest === 0) {
        return 1;
    }
    else if (coins.length === 0) {
        return 0;
    }
    else if (rest >= coins[0]) {
        return calc(coins, rest - coins[0]) + calc(coins.slice(1), rest);
    }
    else {
        return calc(coins.slice(1), rest);
    }
}

main();
