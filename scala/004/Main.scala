/*
 * ProjectEuler 004
 * Scala / Main.scala
 * copyright (c) 2015 Susisu
 *
 * Scala 2.11.4
 * `scalac Main.scala -d bin`
 */

import euler._

object Main {
    def main(args: Array[String]) {
        var max = 0;
        for (a <- 100 until 1000) {
            for (b <- a until 1000) {
                val p = a * b;
                if (isPalindrome(p) && p > max) {
                    max = p;
                }
            }
        }
        println(max);
    }
}

package object euler {
    def isPalindrome(n: Int): Boolean = {
        val s = n.toString();
        return s == s.reverse;
    }
}
