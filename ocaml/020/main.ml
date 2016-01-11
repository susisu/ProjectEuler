(*
    ProjectEuler 020
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main nums.cmxa main.ml`
*)

open Big_int

let one_big_int = big_int_of_int 1
let ten_big_int = big_int_of_int 10

let big_factorial n =
    let rec itr p n =
        if n = 0 then p
        else itr (mult_int_big_int n p) (n - 1)
    in
    itr one_big_int n

let main _ =
    let f = big_factorial 100 in
    let rec itr s n =
        if eq_big_int n zero_big_int then s
        else itr (s + int_of_big_int (mod_big_int n ten_big_int)) (div_big_int n ten_big_int)
    in
    print_int (itr 0 f);
    print_newline ()

let _ = main ()
