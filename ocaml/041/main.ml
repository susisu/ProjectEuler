(*
    ProjectEuler 041
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let init xs =
    let rec itr zs = function
        | []      -> raise @@ Failure "init"
        | y :: [] -> List.rev zs
        | y :: ys -> itr (y :: zs) ys
    in itr [] xs

let rec last = function
    | []      -> raise @@ Failure "last"
    | x :: [] -> x
    | x :: xs -> last xs

let span f xs =
    let rec itr zs = function
        | []               -> List.rev zs, []
        | y :: ys when f y -> itr (y :: zs) ys
        | ys               -> List.rev zs, ys
    in itr [] xs

let rec split = function
    | [], _, _                     -> raise @@ Failure "split"
    | (false :: _), [], _          -> raise @@ Failure "split"
    | (false :: os), (x :: xs), ys -> split (os, xs, (x :: ys))
    | (true :: _), xs, ys          -> ys, xs

let next_permutaion = function
    | [] -> raise @@ Failure "next_permutaion"
    | xs ->
        try
            let os = false :: List.map2 (>) (init xs) (List.tl xs) in
            let ys, zs = split (os, xs, []) in
            let us, vs = span ((<) (List.hd zs)) ys in
            init us @ (List.hd zs :: vs) @ (last us :: List.tl zs)
        with
        | Failure "split" -> raise @@ Failure "next_permutaion"
        | e               -> raise e
 
let concat_permutaion xs =
    let rec itr n = function
        | []      -> n
        | y :: ys -> itr (n * 10 + y) ys
    in itr 0 xs

let list_from n =
    let rec itr xs r =
        if r = n then n :: xs
        else itr (r :: xs) (r + 1)
    in itr [] 1

let upper = 10_000_000

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

let factorial n =
    let rec itr p = function
        | 0 -> p
        | r -> itr (p * r) (r - 1)
    in itr 1 n

let max_n_digit_pandigital_prime n =
    let rec itr m ys i =
        let p = concat_permutaion ys in
        if is_prime p && p > m then
            if i = 1 then p
            else itr p (next_permutaion ys) (i - 1)
        else
            if i = 1 then m
            else itr m (next_permutaion ys) (i - 1)
    in itr 0 (list_from n) (factorial n)

let max_pandigial_prime =
    let rec itr = function
        | 0 -> raise @@ Failure "max_pandigial_prime"
        | n ->
            let m = max_n_digit_pandigital_prime n in
            if m > 0 then m
            else itr (n - 1)
    in itr 7

let _ =
    print_int max_pandigial_prime;
    print_newline ()
