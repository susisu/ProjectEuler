# ProjectEuler 000
# Perl / main.pl
# copyright (c) 2015 Susisu
#
# Perl 5.16.2
# `perl main.pl`

sub main {
    my $sum = 0;
    for (my $n = 1; $n < 1000; $n++) {
        if ($n % 3 == 0 || $n % 5 == 0) {
            $sum += $n;
        }
    }
    print "$sum\n";
}

&main;
