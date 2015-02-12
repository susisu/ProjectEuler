(*
    ProjectEuler 001
    Standard ML / main.sml
    copyright (c) 2015 Susisu

    Standard ML of New Jersey v110.77
    `sml main.sml`
*)

fun calc (n : Int64.int) (p : Int64.int) : Int64.int =
    if n <= 1 then p
    else if n mod p = 0 then calc (n div p) p
    else calc n (p + 1)

fun main () = print (Int64.toString (calc 600851475143 2) ^ "\n")

val _ = main ()
