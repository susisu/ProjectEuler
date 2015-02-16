/*
 * ProjectEuler 010
 * Scala / Main.scala
 * copyright (c) 2015 Susisu
 *
 * Scala 2.11.4
 * `scalac Main.scala -d bin`
 */

import math._

object Main {
    def main(args: Array[String]) {
        val n = 2000000;
        val table = new Array[Boolean](n);
        table(0) = false;
        table(1) = false;
        for (i <- 2 until n) {
            table(i) = true;
        }

        val r = floor(sqrt(n)).toInt;
        for (i <- 2 to r) {
            if (table(i)) {
                for (j <- i * i until n by i) {
                    table(j) = false;
                }
            }
        }

        var total: Long = 0;
        for (i <- 0 until n) {
            if (table(i)) {
                total += i;
            }
        }
        println(total);
    }
}
