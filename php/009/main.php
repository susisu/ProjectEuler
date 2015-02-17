<?php
/*
 * ProjectEuler 009
 * PHP / main.php
 * copyright (c) 2015 Susisu
 *
 * PHP 5.4.30
 * `php main.php`
 */

function main() {
    for ($a = 1; $a <= 332; $a++) {
        for ($b = $a + 1; $b < 1000 - $a - $b; $b++) {
            if (2 * $a * $b - 2000 * ($a + $b) + 1000000 === 0) {
                $p = $a * $b * (1000 - $a - $b);
                echo "$p\n";
                return;
            }
        }
    }
}

main();
