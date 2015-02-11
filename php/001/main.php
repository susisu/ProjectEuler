<?php
/*
 * ProjectEuler 001
 * PHP / main.php
 * copyright (c) 2015 Susisu
 *
 * PHP 5.4.30
 * `php main.php`
 */

function main() {
    $sum = 0;
    for ($n = 1; $n < 1000; $n++) {
        if ($n % 3 === 0 || $n % 5 === 0) {
            $sum += $n;
        }
    }
    echo "$sum\n";
}

main();
