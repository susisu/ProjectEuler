# ProjectEuler 009
# Perl / main.pl
# copyright (c) 2015 Susisu
#
# Perl 5.16.2
# `perl main.pl`

sub main {
    for (my $a = 1; $a <= 332; $a++) {
        for (my $b = $a + 1; $b < 1000 - $a - $b; $b++) {
            if (2 * $a * $b - 2000 * ($a + $b) + 1000000 == 0) {
                print $a * $b * (1000 - $a - $b) . "\n";
                return;
            }
        }
    }
}

&main;
