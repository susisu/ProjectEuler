/*
 * ProjectEuler 001
 * Scala / Main.scala
 * copyright (c) 2015 Susisu
 *
 * Scala 2.11.4
 * `scalac Main.scala -d bin`
 */

object Main {
    def main(args: Array[String]) {
        var sum = 0;
        for (n <- 1 until 1000) {
            if (n % 3 == 0 || n % 5 == 0) {
                sum += n;
            }
        }
        println(sum);
    }
}
