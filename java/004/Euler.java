/*
 * ProjectEuler 004
 * Java / Euler.java
 * copyright (c) 2015 Susisu
 */

public class Euler {
    public static boolean isPalindrome(int n) {
        String s = String.valueOf(n);
        int len = s.length();
        for (int i = 0; i < len / 2; i++) {
            if (s.charAt(i) != s.charAt(len - 1 - i)) {
                return false;
            }
        }
        return true;
    }
}
