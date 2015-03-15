/*
 * ProjectEuler 008
 * Java / Main.java
 * copyright (c) 2015 Susisu
 *
 * Java SE 1.8.0_25
 * `javac Main.java -d bin`
 */

import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;

public class Main {
    private static final int N = 13;

    private static int readDigit(char d) {
        int n = d - '0';
        if (n < 0 || n > 9) {
            return 0;
        }
        else {
            return n;
        }
    }

    public static void main(String[] args) {
        File file = new File("./digits.txt");
        BufferedReader reader = null;
        String digits = null;
        try {
            reader = new BufferedReader(new FileReader(file));
            digits = reader.readLine();
        }
        catch (Exception e) {
            System.out.println(e);
        }
        finally {
            try {
                reader.close();
            }
            catch (Exception e) {
                System.out.println(e);
            }
        }
        int len = digits.length();
        long max = 0;
        for (int i = 0; i <= len - N; i++) {
            long p = 1;
            for (int j = 0; j < N; j++) {
                p *= readDigit(digits.charAt(i + j));
            }
            if (p > max) {
                max = p;
            }
        }
        System.out.println(max);
    }
}
