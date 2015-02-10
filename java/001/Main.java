/*
 * ProjectEuler 001
 * Java / Main.java
 * copyright (c) 2015 Susisu
 *
 * Java SE 1.8.0_25
 * `javac Main.java -d bin`
 */

public class Main {
    public static void main(String[] args) {
        int sum = 0;
        for (int n = 1; n < 1000; n++) {
            if (n % 3 == 0 || n % 5 == 0) {
                sum += n;
            }
        }
        System.out.println(sum);
    }
}
