# ProjectEuler 010
# Perl / main.pl
# copyright (c) 2015 Susisu
#
# Perl 5.16.2
# `perl main.pl`

sub main {
    my @table;
    my $n = 2000000;
    for (my $i = 0; $i < $n; $i++) {
        $table[$i] = 1;
    }
    $table[0] = 0;
    $table[1] = 0;

    $r = sqrt($n);
    for (my $i = 0; $i <= $r; $i++) {
        if ($table[$i]) {
            for (my $j = $i * $i; $j < $n; $j += $i) {
                $table[$j] = 0;
            }
        }
    }

    $total = 0;
    for (my $i = 0; $i < $n; $i++) {
        if ($table[$i]) {
            $total += $i;
        }
    }
    print $total . "\n";
}

&main;
