(*
    ProjectEuler 005
    Standard ML / main.sml
    copyright (c) 2015 Susisu

    Standard ML of New Jersey v110.77
    `sml main.sml`
*)

fun gcd a b =
    if a < b then gcd b a
    else if b = 0 then a
    else gcd (a mod b) b
;

fun calc n p =
    if n <= 20 then calc (n + 1) (p div gcd p n * n)
    else p
;

fun main () = print (Int.toString (calc 1 1) ^ "\n");

val _ = main ();
