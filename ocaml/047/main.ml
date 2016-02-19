(*
    ProjectEuler 047
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let num_distinct_prime_factors n =
    let rec itr c f n d =
        if n = 1 then c
        else if n mod d = 0 then
            if f then itr c true (n / d) d
            else itr (c + 1) true (n / d) d
        else itr c false n (d + 1)
    in itr 0 false n 2

let _ =
    let max_cnt = 4 in
    let dpf = 4 in
    let rec itr cnt fst n =
        let d = num_distinct_prime_factors n in
        if d = dpf then
            if cnt = 0 then itr 1 n (n + 1)
            else if cnt = max_cnt - 1 then fst
            else itr (cnt + 1) fst (n + 1)
        else itr 0 0 (n + 1)
    in
    print_int (itr 0 0 1);
    print_newline ()
