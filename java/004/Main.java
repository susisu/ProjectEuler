/*
 * ProjectEuler 004
 * Java / Main.java
 * copyright (c) 2015 Susisu
 *
 * Java SE 1.8.0_25
 * `javac Main.java -d bin`
 */

public class Main {
    public static void main(String[] args) {
        int max = 0;
        for (int a = 100; a < 1000; a++) {
            for (int b = a; b < 1000; b++) {
                int p = a * b;
                if (Euler.isPalindrome(p) && p > max) {
                    max = p;
                }
            }
        }
        System.out.println(max);
    }
}
