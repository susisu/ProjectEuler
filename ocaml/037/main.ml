(*
    ProjectEuler 037
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let truncate_left_to_right n =
    let e = floor @@ log10 @@ float_of_int n in
    let p = int_of_float @@ 10.0 ** e in
    n mod p

let truncate_right_to_left n = n / 10

let is_prime n =
    if n < 2 then false
    else
        let r = int_of_float @@ floor @@ sqrt @@ float_of_int n in
        let rec itr m =
            if m > r then true
            else if n mod m = 0 then false
            else itr (m + 1)
        in itr 2

let is_truncatable_prime n =
    if is_prime n then
        let rec l2r = function
            | 0 -> true
            | m ->
                if is_prime m then l2r (truncate_left_to_right m)
                else false
        in let rec r2l = function
            | 0 -> true
            | m ->
                if is_prime m then r2l (truncate_right_to_left m)
                else false
        in l2r (truncate_left_to_right n) && r2l (truncate_right_to_left n)
    else false

let _ =
    let rec itr n s = function
        | 11 -> s
        | c  ->
            if is_truncatable_prime n then itr (n + 1) (s + n) (c + 1)
            else itr (n + 1) s c
    in print_int (itr 11 0 0);
    print_newline ()
