(*
    ProjectEuler 008
    Standard ML / main.sml
    copyright (c) 2015 Susisu

    Standard ML of New Jersey v110.77
    `sml main.sml`
*)

fun digitToLarge c = let val n = ord c - ord #"0" in
    if n < 0 orelse n > 9 then 0 else Int.toLarge n
end;

fun calc digits l n (m : LargeInt.int) =
    if l < n then m
    else let val p = foldl (op * ) 1 (List.take (digits, n)) in
        if p > m then calc (tl digits) (l - 1) n p
        else calc (tl digits) (l - 1) n m
    end
;

fun main () = let val stream = TextIO.openIn "./digits.txt" in (
    case TextIO.inputLine stream of
        NONE      => print "input failed\n"
      | SOME line =>
            let val digits = (map digitToLarge o explode) line in
                print (LargeInt.toString (calc digits (length digits) 13 0) ^ "\n")
            end
    ;
    TextIO.closeIn stream
) end;

val _ = main ();
