<?php
/*
 * ProjectEuler 004
 * PHP / main.php
 * copyright (c) 2015 Susisu
 *
 * PHP 5.4.30
 * `php main.php`
 */

function main() {
    $max = 0;
    for ($a = 100; $a < 1000; $a++) {
        for ($b = 100; $b < 1000; $b++) {
            $p = $a * $b;
            if (isPalindrome($p) && $p > $max) {
                $max = $p;
            }
        }
    }
    echo "$max\n";
}

function isPalindrome($n) {
    $s = (string) $n;
    return $s === strrev($s);
}

main();
