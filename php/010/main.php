<?php
/*
 * ProjectEuler 010
 * PHP / main.php
 * copyright (c) 2015 Susisu
 *
 * PHP 5.4.30
 * `php main.php`
 */

ini_set("memory_limit", "512M");

function main() {
    $n = 2000000;

    if ($n < 2) {
        echo "0\n";
        return;
    }

    $table = array_fill(0, $n, true);
    $table[0] = false;
    $table[1] = false;

    $sum = 0;
    for ($i = 2; $i < $n; $i++) {
        if ($table[$i]) {
            for ($j = $i * $i; $j < $n; $j += $i) {
                $table[$j] = false;
            }
            $sum += $i;
        }
    }
    echo "$sum\n";
}

main();
