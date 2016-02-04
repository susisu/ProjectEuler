(*
    ProjectEuler 030
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main -linkpkg -package core -thread main.ml`
*)

(*
    9 ^ 5 = 59049
    6 * 9 ^ 5 = 354294 > 100000
    7 * 9 ^ 5 = 413343 < 1000000
*)

open Core

let pow = Core_int.pow

let sum_of_fifth_powers_of_its_digits n =
    let rec itr s = function
          0 -> s
        | n -> itr (s + pow (n mod 10) 5) (n / 10)
    in itr 0 n

let _ =
    let rec itr s n =
        if n > 354294 then s
        else
            let p = sum_of_fifth_powers_of_its_digits n in
            if n == p then itr (s + n) (n + 1)
            else itr s (n + 1)
    in
    let s = itr 0 2 in
    print_int s;
    print_newline ()
