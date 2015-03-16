/*
 * ProjectEuler 009
 * Java / Main.java
 * copyright (c) 2015 Susisu
 *
 * Java SE 1.8.0_25
 * `javac Main.java -d bin`
 */

public class Main {
    public static void main(String[] args) {
        for (int a = 1; a <= 332; a++) {
            for (int b = a + 1; b < 1000 - a - b; b++) {
                if (2 * a * b - 2000 * (a + b) + 1000000 == 0) {
                    System.out.println(a * b * (1000 - a - b));
                    return;
                }
            }
        }
    }
}
