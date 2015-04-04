# ProjectEuler 008
# Perl / main.pl
# copyright (c) 2015 Susisu
#
# Perl 5.16.2
# `perl main.pl`

sub main {
    open(my $fh, "./digits.txt");
    my $digits = readline $fh;
    chomp $digits;
    close $fh;
    my $n = 13;
    my $l = length $digits;
    my $max = 0;
    for (my $i = 0; $i <= $l - $n; $i++) {
        my $p = 1;
        for (my $j = 0; $j < $n; $j++) {
            $p *= substr($digits, $i + $j, 1);
        }
        if ($p > $max) {
            $max = $p;
        }
    }
    print $max . "\n";
}

&main;
