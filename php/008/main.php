<?php
/*
 * ProjectEuler 008
 * PHP / main.php
 * copyright (c) 2015 Susisu
 *
 * PHP 5.4.30
 * `php main.php`
 */

function main() {
    $handle = fopen("./digits.txt", "r");
    if (!$handle) {
        echo "could not load file";
        return;
    }
    $contents = fgets($handle);
    fclose($handle);
    $digits = array_map(function ($digit) { return (int)$digit; }, str_split($contents));

    $len = count($digits);
    $n = 13;
    $max = 0;
    for ($i = 0; $i <= $len - $n; $i++) {
        $p = 1;
        for ($j = 0; $j < $n; $j++) {
            $p *= $digits[$i + $j];
        }
        if ($p > $max) {
            $max = $p;
        }
    }
    echo "$max\n";
}

main();
