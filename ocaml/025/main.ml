(*
    ProjectEuler 025
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let phi = (1.0 +. sqrt 5.0) /. 2.0

(* 
let pseudo_fibonacci n = phi ** n /. sqrt 5.0
let log10_pseudo_fibonacci n = n * log10 phi - log10 5.0 /. 2.0
 *)

let main _ =
    (* n * p - q >= 999 *)
    let p = log10 phi in
    let q = log10 5.0 /. 2.0 in
    let n = ceil ((999.0 +. q) /. p) in
    print_int (int_of_float n);
    print_newline ()

let _ = main ()
