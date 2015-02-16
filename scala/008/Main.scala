/*
 * ProjectEuler 008
 * Scala / Main.scala
 * copyright (c) 2015 Susisu
 *
 * Scala 2.11.4
 * `scalac Main.scala -d bin`
 */

import scala.io.Source

object Main {
    def main(args: Array[String]) {
        val contents = Source.fromFile("./digits.txt");
        val digits = contents.getLines.toList.head.split("").map(_.toInt);
        val n = 13;
        val len = digits.length;
        var max: Long = 0;
        for (i <- 0 to len - n) {
            var p: Long = 1;
            for (j <- 0 until n) {
                p *= digits(i + j);
            }
            if (p > max) {
                max = p;
            }
        }
        println(max);
    }
}
