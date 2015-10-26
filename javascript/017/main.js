/*
 * ProjectEuler 017
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v4.2.1
 * `node main.js`
 */

"use strict";

function main() {
    var sum = 0;
    for (var i = 1; i <= 1000; i++) {
        sum += numberToWord(i).length;
    }
    console.log(sum);
}

var table = [
    "zero",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen",
    "twenty"
];
table[30]   = "thrity";
table[40]   = "forty";
table[50]   = "fifty";
table[60]   = "sixty";
table[70]   = "seventy";
table[80]   = "eighty";
table[90]   = "ninety";
table[100]  = "hundred";

function numberToWord(n) {
    if (n == 0) {
        return "";
    }
    else if (n <= 20) {
        return table[n];
    }
    else if (n < 100) {
        return table[Math.floor(n / 10) * 10] + numberToWord(n % 10);
    }
    else if (n < 1000) {
        return table[Math.floor(n / 100)] + table[100] + (n % 100 > 0 ? "and" + numberToWord(n % 100) : "");
    }
    else if (n == 1000) {
        return "onethousand";
    }
    else {
        return "";
    }
}

main();
