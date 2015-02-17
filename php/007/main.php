<?php
/*
 * ProjectEuler 007
 * PHP / main.php
 * copyright (c) 2015 Susisu
 *
 * PHP 5.4.30
 * `php main.php`
 */

function main() {
    $count = 0;
    $n = 2;
    while (true) {
        if (isPrime($n)) {
            $count++;
            if ($count === 10001) {
                break;
            }
        }
        $n++;
    }
    echo "$n\n";
}

function isPrime($n) {
    if ($n < 2) {
        return false;
    }
    else {
        $r = floor(sqrt($n));
        for ($m = 2; $m <= $r; $m++) {
            if ($n % $m === 0) {
                return false;
            }
        }
        return true;
    }
}

main();
