(*
    ProjectEuler 046
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let upper = 10_000

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

let primes =
    let rec itr xs = function
        | 0 -> xs
        | n ->
            if Array.get is_prime_table n then itr (n :: xs) (n - 1)
            else itr xs (n - 1)
    in itr [] (upper - 1)

let is_square n =
    let r = int_of_float @@ floor @@ sqrt @@ float_of_int n in
    r * r = n

let _ =
    let rec itr n =
        if n < upper then
            if is_prime n then itr (n + 2)
            else
                let rec check = function
                    | []      -> false
                    | p :: ps ->
                        if is_square @@ (n - p) / 2 then true
                        else check ps
                in if check primes then itr (n + 2)
                else begin
                    print_int n;
                    print_newline ()
                end
        else print_endline "not found"
    in itr 3
