# ProjectEuler 002
# Perl / main.pl
# copyright (c) 2015 Susisu
#
# Perl 5.16.2
# `perl main.pl`

sub main {
    my $sum = 0;
    my $a = 0;
    my $b = 1;
    while ($a <= 4000000) {
        my $t = $a;
        $a    = $b;
        $b   += $t;
        if ($a % 2 == 0) {
            $sum += $a;
        }
    }
    print "$sum\n";
}

&main;
