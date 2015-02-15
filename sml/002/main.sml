(*
    ProjectEuler 002
    Standard ML / main.sml
    copyright (c) 2015 Susisu

    Standard ML of New Jersey v110.77
    `sml main.sml`
*)

fun calc a b max sum =
    if a <= 4000000 then
        if a mod 2 = 0 then
            calc b (a + b) max (sum + a)
        else
            calc b (a + b) max sum
    else
        sum;

fun main () = print (Int.toString (calc 1 1 4000000 0) ^ "\n");

val _ = main ();
