/*
 * ProjectEuler 005
 * Java / Main.java
 * copyright (c) 2015 Susisu
 *
 * Java SE 1.8.0_25
 * `javac Main.java -d bin`
 */

public class Main {
    public static void main(String[] args) {
        long p = 1;
        for (int n = 1; n <= 20; n++) {
            p *= n / Euler.gcd(p, n);
        }
        System.out.println(p);
    }
}
