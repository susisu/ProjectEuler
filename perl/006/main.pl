# ProjectEuler 006
# Perl / main.pl
# copyright (c) 2015 Susisu
#
# Perl 5.16.2
# `perl main.pl`

sub main {
    my $s = 0;
    my $t = 0;
    for (my $i = 1; $i <= 100; $i++) {
        $s += $i;
        $t += $i * $i;
    }
    print $s * $s - $t . "\n";
}

&main;
