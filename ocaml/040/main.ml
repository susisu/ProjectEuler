(*
    ProjectEuler 040
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let nth_digit n =
    let rec itr e r =
        let p = int_of_float @@ 10.0 ** (float_of_int e) in
        let d = 9 * p * (e + 1) in
        if r > d then itr (e + 1) (r - d)
        else e, r
    in
    let e, r = itr 0 n in
    let x, y = 1 + (r - 1) / (e + 1), (r - 1) mod (e + 1) in
    let p = int_of_float @@ 10.0 ** (float_of_int e) in
    let q = int_of_float @@ 10.0 ** (float_of_int @@ e - y) in
    (p - 1 + x) / q mod 10

let _ =
    let rec itr p = function
        | 0 -> p
        | n -> itr (p * nth_digit n) (n / 10)
    in
    print_int (itr 1 1_000_000);
    print_newline ()
