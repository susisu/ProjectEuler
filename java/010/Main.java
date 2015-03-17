/*
 * ProjectEuler 010
 * Java / Main.java
 * copyright (c) 2015 Susisu
 *
 * Java SE 1.8.0_25
 * `javac Main.java -d bin`
 */

public class Main {
    private static final int N = 2000000;

    public static void main(String[] args) {
        boolean table[] = new boolean[N];
        table[0] = false;
        table[1] = false;
        for (int i = 2; i < N; i++) {
            table[i] = true;
        }

        int r = (int)Math.floor(Math.sqrt(N));
        for (int i = 2; i <= r; i++) {
            if (table[i]) {
                for (int j = i * i; j < N; j += i) {
                    table[j] = false;
                }
            }
        }

        long total = 0;
        for (int i = 0; i < N; i++) {
            if (table[i]) {
                total += i;
            }
        }
        System.out.println(total);
    }
}
