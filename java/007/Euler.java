/*
 * ProjectEuler 007
 * Java / Euler.java
 * copyright (c) 2015 Susisu
 */

public class Euler {
    public static boolean isPrime(long n) {
        if (n < 2) {
            return false;
        }
        long r = (long)Math.sqrt(n);
        for (long i = 2; i <= r; i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }
}
