(*
    ProjectEuler 048
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let power_mod b p m =
    let rec itr n = function
        | 0 -> n
        | i -> itr (n * (b mod m) mod m) (i - 1)
    in itr 1 p

let modulus = 10_000_000_000

let _ =
    let rec itr s = function
        | 0 -> s
        | n -> itr ((s + power_mod n n modulus) mod modulus) (n - 1)
    in
    print_int (itr 0 1000);
    print_newline ()
