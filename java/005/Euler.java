/*
 * ProjectEuler 004
 * Java / Euler.java
 * copyright (c) 2015 Susisu
 */

public class Euler {
    public static long gcd(long a, long b) {
        if (a < b) {
            return gcd(b, a);
        }
        else if (b == 0) {
            return a;
        }
        else {
            return gcd(b, a % b);
        }
    }
}
