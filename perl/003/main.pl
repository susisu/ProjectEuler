# ProjectEuler 003
# Perl / main.pl
# copyright (c) 2015 Susisu
#
# Perl 5.16.2
# `perl main.pl`

sub main {
    my $n = 600851475143;
    my $p = 2;
    while ($n > 1) {
        if ($n % $p == 0) {
            $n /= $p;
        }
        else {
            $p++;
        }
    }
    print "$p\n";
}

&main;
