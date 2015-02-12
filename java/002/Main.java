/*
 * ProjectEuler 002
 * Java / Main.java
 * copyright (c) 2015 Susisu
 *
 * Java SE 1.8.0_25
 * `javac Main.java -d bin`
 */

public class Main {
    public static void main(String[] args) {
        int sum = 0;
        int a = 0;
        int b = 1;
        while (a <= 4000000) {
            int t = a;
            a     = b;
            b    += t;
            if (a % 2 == 0) {
                sum += a;
            }
        }
        System.out.println(sum);
    }
}
