<?php
/*
 * ProjectEuler 002
 * PHP / main.php
 * copyright (c) 2015 Susisu
 *
 * PHP 5.4.30
 * `php main.php`
 */

function main() {
    $sum = 0;
    $a = 0;
    $b = 1;
    while ($a <= 4000000) {
        $t  = $a;
        $a  = $b;
        $b += $t;
        if ($a % 2 === 0) {
            $sum += $a;
        }
    }
    echo "$sum\n";
}

main();
