/*
 * ProjectEuler 006
 * Scala / Main.scala
 * copyright (c) 2015 Susisu
 *
 * Scala 2.11.4
 * `scalac Main.scala -d bin`
 */

object Main {
    def main(args: Array[String]) {
        var s = 0;
        var t = 0;
        for (n <- 1 to 100) {
            s += n;
            t += n * n;
        }
        println(s * s - t);
    }
}
