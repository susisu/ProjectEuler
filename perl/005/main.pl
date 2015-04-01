# ProjectEuler 005
# Perl / main.pl
# copyright (c) 2015 Susisu
#
# Perl 5.16.2
# `perl main.pl`

sub gcd {
    my ($a, $b) = @_;
    if ($a < $b) {
        return gcd($b, $a);
    }
    elsif ($b == 0) {
        return $a;
    }
    else {
        return gcd($b, $a % $b);
    }
}

sub main {
    my $p = 1;
    for (my $i = 1; $i <= 20; $i++) {
        $p *= $i / gcd($p, $i);
    }
    print $p . "\n";
}

&main;
