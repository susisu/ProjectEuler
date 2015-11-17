/*
 * ProjectEuler 036
 * JavaScript / main.js
 * copyright (c) 2015 Susisu
 *
 * Node.js v5.0.0
 * `node main.js`
 */

"use strict";

function main() {
    var sum = 0;
    for (var i = 1; i < 1000000; i++) {
        if (isPalindrome(i.toString(10)) && isPalindrome(i.toString(2))) {
            sum += i;
        }
    }
    console.log(sum);
}

function isPalindrome(str) {
    var len = str.length;
    for (var i = 0; i < len / 2; i++) {
        if (str[i] !== str[len - 1 - i]){
            return false;
        }
    }
    return true;
}

main();
