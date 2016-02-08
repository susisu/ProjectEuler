(*
    ProjectEuler 035
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let upper = 1_000_000

let rotate n =
    let e = floor @@ log10 @@ float_of_int n in
    let p = int_of_float @@ 10.0 ** e in
    (n mod 10) * p + n / 10

let sieve table =
    let l = Array.length table in
    let r = int_of_float @@ floor @@ sqrt @@ float_of_int l in
    let rec itr i =
        if i <= r then begin
            if Array.get table i then begin
                let rec fill j =
                    if j < l then begin
                        Array.set table j false;
                        fill (j + i)
                    end
                in fill (i * i)
            end;
            itr (i + 1)
        end
    in itr 2

let is_prime_table = Array.make upper true
let _ = Array.set is_prime_table 0 false
let _ = Array.set is_prime_table 1 false
let _ = sieve is_prime_table

let is_prime n = Array.get is_prime_table n

let is_circular_prime n =
    let e = int_of_float @@ floor @@ log @@ float_of_int n in
    let rec itr i n =
        if i > e then true
        else if is_prime n then itr (i + 1) (rotate n)
        else false
    in itr 0 n

let _ =
    let rec itr c n =
        if n >= upper then c
        else if is_circular_prime n then itr (c + 1) (n + 1)
        else itr c (n + 1)
    in
    let c = itr 0 2 in
    print_int c;
    print_newline ()
