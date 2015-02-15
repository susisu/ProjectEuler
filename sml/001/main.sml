(*
    ProjectEuler 001
    Standard ML / main.sml
    copyright (c) 2015 Susisu

    Standard ML of New Jersey v110.77
    `sml main.sml`
*)

fun calc n max sum =
    if n <= max then
        if n mod 3 = 0 orelse n mod 5 = 0 then
            calc (n + 1) max (sum + n)
        else
            calc (n + 1) max sum
    else
        sum;

fun main () = print (Int.toString (calc 1 999 0) ^ "\n");

val _ = main ();
