(*
    ProjectEuler 004
    Standard ML / main.sml
    copyright (c) 2015 Susisu

    Standard ML of New Jersey v110.77
    `sml main.sml`
*)

fun isPalindrome n = let val s = Int.toString n in s = implode (rev (explode s)) end;

fun calc a b m =
    if a > 999 then m
    else if b > 999 then calc (a + 1) (a + 1) m
    else
        let val n = a * b in
            if isPalindrome n andalso n > m then calc a (b + 1) n
            else calc a (b + 1) m
        end
;

fun main () = print ((Int.toString (calc 100 100 0)) ^ "\n");

val _ = main ();
