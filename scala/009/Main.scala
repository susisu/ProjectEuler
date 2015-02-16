/*
 * ProjectEuler 009
 * Scala / Main.scala
 * copyright (c) 2015 Susisu
 *
 * Scala 2.11.4
 * `scalac Main.scala -d bin`
 */

object Main {
    def main(args: Array[String]) {
        for (a <- 1 to 332) {
            var b = a + 1;
            while (b < 1000 - a - b) {
                if (2 * a * b - 2000 * (a + b) + 1000000 == 0) {
                    println(a * b * (1000 - a - b));
                    return;
                }
                b += 1;
            }
        }
    }
}
