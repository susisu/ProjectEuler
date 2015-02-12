<?php
/*
 * ProjectEuler 003
 * PHP / main.php
 * copyright (c) 2015 Susisu
 *
 * PHP 5.4.30
 * `php main.php`
 */

function main() {
    $n = 600851475143;
    $p = 2;
    while ($n > 1) {
        if ($n % $p === 0) {
            $n /= $p;
        }
        else {
            $p++;
        }
    }
    echo "$p\n";
}

main();
