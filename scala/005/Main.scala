/*
 * ProjectEuler 005
 * Scala / Main.scala
 * copyright (c) 2015 Susisu
 *
 * Scala 2.11.4
 * `scalac Main.scala -d bin`
 */

import euler._

object Main {
    def main(args: Array[String]) {
        var p = 1;
        for (n <- 1 to 20) {
            p *= n / gcd(p, n);
        }
        println(p);
    }
}

package object euler {
    def gcd(a: Int, b: Int): Int = {
        if (a < b) gcd(b, a);
        else if (b == 0) a;
        else gcd(b, a % b);
    }
}
