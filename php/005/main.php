<?php
/*
 * ProjectEuler 005
 * PHP / main.php
 * copyright (c) 2015 Susisu
 *
 * PHP 5.4.30
 * `php main.php`
 */

function main() {
    $prod = 1;
    for ($n = 1; $n <= 20; $n++) {
        $prod *= $n / gcd($prod, $n);
    }
    echo "$prod\n";
}

function gcd($a, $b) {
    if ($a < $b) {
        return gcd($b, $a);
    }
    else if($b === 0) {
        return $a;
    }
    else {
        return gcd($b, $a % $b);
    }
}

main();
