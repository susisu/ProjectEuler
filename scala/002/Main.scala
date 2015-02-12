/*
 * ProjectEuler 002
 * Scala / Main.scala
 * copyright (c) 2015 Susisu
 *
 * Scala 2.11.4
 * `scalac Main.scala -d bin`
 */

object Main {
    def main(args: Array[String]) {
        var sum = 0;
        var a = 0;
        var b = 1;
        while (a <= 4000000) {
            var t = a;
            a     = b;
            b    += t;
            if (a % 2 == 0) {
                sum += a;
            }
        }
        println(sum);
    }
}
