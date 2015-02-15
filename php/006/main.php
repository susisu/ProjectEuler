<?php
/*
 * ProjectEuler 006
 * PHP / main.php
 * copyright (c) 2015 Susisu
 *
 * PHP 5.4.30
 * `php main.php`
 */

function main() {
    $s = 0;
    $t = 0;
    for ($n = 1; $n <= 100; $n++) {
        $s += $n;
        $t += $n * $n;
    }
    echo $s * $s - $t;
    echo "\n";
}

main();
