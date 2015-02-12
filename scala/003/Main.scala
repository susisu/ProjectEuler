/*
 * ProjectEuler 003
 * Scala / Main.scala
 * copyright (c) 2015 Susisu
 *
 * Scala 2.11.4
 * `scalac Main.scala -d bin`
 */

object Main {
    def main(args: Array[String]) {
        println(calc(600851475143L, 2));
    }

    def calc(n: Long, p: Long): Long = {
        if (n <= 1) p
        else if (n % p == 0) calc(n / p, p)
        else calc(n, p + 1)
    }
}
