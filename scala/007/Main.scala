/*
 * ProjectEuler 007
 * Scala / Main.scala
 * copyright (c) 2015 Susisu
 *
 * Scala 2.11.4
 * `scalac Main.scala -d bin`
 */

import euler._

object Main {
    def main(args: Array[String]) {
        var counter = 0;
        var n = 1;
        while (counter < 10001) {
            n += 1;
            if (isPrime(n)) {
                counter += 1;
            }
        }
        println(n);
    }
}

package object euler {
    import math._

    def isPrime(n: Int): Boolean = {
        if (n < 2) false;
        else {
            val r: Int = floor(sqrt(n)).toInt;
            for (m <- 2 to r) {
                if (n % m == 0) {
                    return false;
                }
            }
            return true;
        }
    }
}
