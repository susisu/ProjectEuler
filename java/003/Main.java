/*
 * ProjectEuler 003
 * Java / Main.java
 * copyright (c) 2015 Susisu
 *
 * Java SE 1.8.0_25
 * `javac Main.java -d bin`
 */

public class Main {
    public static void main(String[] args) {
        long n = 600851475143L;
        long p = 2;
        while (n > 1) {
            if (n % p == 0) {
                n /= p;
            }
            else {
                p++;
            }
        }
        System.out.println(p);
    }
}
