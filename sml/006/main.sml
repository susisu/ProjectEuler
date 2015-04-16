(*
    ProjectEuler 006
    Standard ML / main.sml
    copyright (c) 2015 Susisu

    Standard ML of New Jersey v110.77
    `sml main.sml`
*)

fun calc n s t =
    if n <= 100 then calc (n + 1) (s + n) (t + n * n)
    else s * s - t
;

fun main () = print (Int.toString (calc 1 0 0) ^ "\n");

val _ = main ();
