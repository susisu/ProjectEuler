/*
 * ProjectEuler 007
 * Java / Main.java
 * copyright (c) 2015 Susisu
 *
 * Java SE 1.8.0_25
 * `javac Main.java -d bin`
 */

public class Main {
    public static void main(String[] args) {
        int counter = 0;
        for (int n = 2; true; n++) {
            if (Euler.isPrime(n)) {
                counter++;
                if (counter == 10001) {
                    System.out.println(n);
                    break;
                }
            }
        }
    }
}
