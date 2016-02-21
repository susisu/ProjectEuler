(*
    ProjectEuler 050
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let upper = 1_000_000

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
    let rec itr ps = function
        | 0 -> ps
        | n ->
            if is_prime n then itr (n :: ps) (n - 1)
            else itr ps (n - 1)
    in itr [] (upper - 1)

let find_longest ps =
    let rec itr n f c r = function
        | _, []                -> f, c, r
        | s, _ when s >= upper -> f, c, r
        | s, x :: xs           ->
            if is_prime s then itr (n + 1) true n s (s + x, xs)
            else itr (n + 1) f c r (s + x, xs)
    in itr 0 false 0 (-1) (0, ps)

let _ =
    let rec itr maxc maxr = function
        | [] -> maxr
        | ps ->
            let f, c, r = find_longest ps in
            if f && c > maxc then itr c r (List.tl ps)
            else itr maxc maxr (List.tl ps)
    in
    let res = itr 0 0 primes in
    print_int res;
    print_newline ()
