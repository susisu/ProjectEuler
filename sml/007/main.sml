(*
    ProjectEuler 007
    Standard ML / main.sml
    copyright (c) 2015 Susisu

    Standard ML of New Jersey v110.77
    `sml main.sml`
*)

fun isPrime n =
    let val r = floor (Math.sqrt (real n))
        fun itr m =
            if m > r then true
            else if n mod m = 0 then false
            else itr (m + 1)
    in
        if n < 2 then false
        else itr 2
    end
;

fun calc c n =
    if isPrime n then
        if c = 10000 then n
        else calc (c + 1) (n + 1)
    else calc c (n + 1)
;

fun main () = print (Int.toString (calc 0 1) ^ "\n");

val _ = main ();
