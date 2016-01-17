(*
    ProjectEuler 024
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main -linkpkg -package core -thread main.ml`
*)

open Core

let factorial n =
    let rec itr p n =
        if n = 0 then p
        else itr (p * n) (n - 1)
    in itr 1 n

let nth_perm n =
    let rec itr n rests rests_len perm =
        if rests_len = 1 then List.rev ((List.hd rests) :: perm)
        else
            let p  = factorial (rests_len - 1) in
            let q  = n / p in
            let e  = List.nth rests q in
            let xs = Core_list.take rests q in
            let ys = Core_list.drop rests (q + 1) in
            itr (n mod p) (xs @ ys) (rests_len - 1) (e :: perm)
    in itr n ['0'; '1'; '2'; '3'; '4'; '5'; '6'; '7'; '8'; '9'] 10 []

let string_of_nth_perm n = Core_string.of_char_list (nth_perm n)

let main _ = print_endline (string_of_nth_perm (1_000_000 - 1))

let _ = main ()
