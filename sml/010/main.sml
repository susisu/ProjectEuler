(*
    ProjectEuler 010
    Standard ML / main.sml
    copyright (c) 2015 Susisu

    Standard ML of New Jersey v110.77
    `sml main.sml`
*)

fun main () =
    let val n = 2000000
        val table = Array.array (n, true)
        val r = floor (Math.sqrt (real n))
    in (
        Array.update (table, 0, false);
        Array.update (table, 1, false);
        let fun fill i step = if i < n then (Array.update (table, i, false); fill (i + step) step) else ()
            fun itr i = if i <= r then (
                if Array.sub (table, i) then fill (i * i) i else ();
                itr (i + 1)
            ) else ()
        in itr 2 end;
        let val tot = Array.foldli (fn (i, isPrime, s) => if isPrime then s + (Int.toLarge i) else s) 0 table
        in print (LargeInt.toString tot ^ "\n") end
    )
    end
;

val _ = main ();
