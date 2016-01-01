(*
    ProjectEuler 012
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main -linkpkg -package core -thread main.ml`
*)

let divisors n =
    let arr = Array.make n 0 in
    let rec itr d r =
        if d <= r then
            if r mod d = 0 then begin
                Array.set arr (d - 1) (Array.get arr (d - 1) + 1);
                itr d (r / d)
            end
            else itr (d + 1) r
        else ()
    in
        itr 2 n;
        arr

let merge_divisors a b =
    let la = Array.length a in
    let lb = Array.length b in
    let l  = max la lb in
    let c  = Array.make l 0 in
    let rec itr arr l i =
        if i < l then begin
            Array.set c i (Array.get c i + Array.get arr i);
            itr arr l (i + 1)
        end
        else ()
    in
        itr a la 0;
        itr b lb 0;
        c

let numDivisors ds l =
    let rec itr p i =
        if i < l then itr (p * (Array.get ds i + 1)) (i + 1)
        else p
    in itr 1 0

let main _ =
    let rec itr n =
        let a  = if n mod 2 = 0 then n / 2 else n in
        let b  = if (n + 1) mod 2 = 0 then (n + 1) / 2 else n + 1 in
        let da = divisors a in
        let db = divisors b in
        let dc = merge_divisors da db in
        let d  = numDivisors dc (max a b) in
        if d > 500 then begin
            print_int (a * b);
            print_newline ()
        end
        else itr (n + 1)
    in itr 1

let _ = main ()
