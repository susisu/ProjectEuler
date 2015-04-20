(*
    ProjectEuler 009
    Standard ML / main.sml
    copyright (c) 2015 Susisu

    Standard ML of New Jersey v110.77
    `sml main.sml`
*)

fun calc a b =
    if a > 332 then ~1
    else if b >= 1000 - a - b then calc (a + 1) (a + 2)
    else if 2 * a * b - 2000 * (a + b) + 1000000 = 0 then a * b * (1000 - a - b)
    else calc a (b + 1)
;

fun main () = print (Int.toString (calc 1 2) ^ "\n");

val _ = main ();
