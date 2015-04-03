# ProjectEuler 007
# Perl / main.pl
# copyright (c) 2015 Susisu
#
# Perl 5.16.2
# `perl main.pl`

sub isPrime {
    my ($n) = @_;
    if ($n < 2) {
        return 0;
    }
    else {
        my $r = sqrt $n;
        for (my $i = 2; $i <= $r; $i++) {
            if ($n % $i == 0) {
                return 0;
            }
        }
        return 1;
    }
}

sub main {
    my $c = 0;
    my $n = 1;
    while ($c < 10001) {
        $n++;
        if (isPrime $n) {
            $c++;
        }
    }
    print $n . "\n";
}

&main;
