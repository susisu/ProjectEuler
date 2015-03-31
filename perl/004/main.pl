# ProjectEuler 004
# Perl / main.pl
# copyright (c) 2015 Susisu
#
# Perl 5.16.2
# `perl main.pl`

sub isPalindrome {
    my $s = $_[0] . "";
    $s == reverse $s;
}

sub main {
    my $max = 0;
    for (my $i = 100; $i < 1000; $i++) {
        for (my $j = 100; $j < 1000; $j++) {
            my $p = $i * $j;
            if (isPalindrome($p) && $p > $max) {
                $max = $p;
            }
        }
    }
    print $max . "\n";
}

&main;
