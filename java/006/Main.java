/*
 * ProjectEuler 006
 * Java / Main.java
 * copyright (c) 2015 Susisu
 *
 * Java SE 1.8.0_25
 * `javac Main.java -d bin`
 */

public class Main {
    public static void main(String[] args) {
        int s = 0;
        int t = 0;
        for (int n = 1; n <= 100; n++) {
            s += n;
            t += n * n;
        }
        System.out.println(s * s - t);
    }
}
