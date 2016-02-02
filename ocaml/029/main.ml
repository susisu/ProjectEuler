(*
    ProjectEuler 029
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let n = 100
let eps = 1e-8

module S = Set.Make (
    struct
        type t = float
        let compare x y =
            if abs_float (x -. y) < eps then 0
            else if x < y then -1
            else 1
    end
)

let _ =
    let empty = S.empty in
    let rec itr set a b =
        if a > n then set
        else if b > n then itr set (a + 1) 2
        else itr (S.add (float_of_int b *. log (float_of_int a)) set) a (b + 1)
    in
    let res = itr empty 2 2 in
    print_int (S.cardinal res);
    print_newline ()
