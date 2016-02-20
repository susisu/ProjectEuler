(*
    ProjectEuler 049
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
    | [] -> []
    | xs ->
        try
            let os = false :: List.map2 (>) (init xs) (List.tl xs) in
            let ys, zs = split (os, xs, []) in
            let us, vs = span ((<) (List.hd zs)) ys in
            init us @ (List.hd zs :: vs) @ (last us :: List.tl zs)
        with
            | Failure "split" -> xs
            | e               -> raise e
 
let factorial n =
    let rec itr p = function
        | 0 -> p
        | n -> itr (n * p) (n - 1)
    in itr 1 n

let permutations xs =
    let xs = List.sort (fun x y -> -compare x y) xs in
    let rec itr ps xs = function
        | 1 -> xs :: ps
        | i -> itr (xs :: ps) (next_permutaion xs) (i - 1)
    in itr [] xs (factorial @@ List.length xs)

let combinations xs n =
    let rec itr c = function
        | [], 0      -> [c]
        | [], r      -> []
        | x :: xs, r -> itr (x :: c) (xs, r - 1) @ itr c (xs, r)
    in itr [] (xs, n)

let test_common_difference = function
    | []     -> true
    | [x]    -> true
    | [x; y] -> true
    | xs     ->
        let xs = List.sort compare xs in
        let ys = List.map2 (-) (List.tl xs) (init xs) in
        if List.hd ys = 0 then false
        else
            let rec itr n = function
                | [] -> true
                | x :: xs ->
                    if x = n then itr n xs
                    else false
            in itr (List.hd ys) ys

let is_prime n =
    let r = int_of_float @@ sqrt @@ float_of_int n in
    let rec itr = function
        | 1 -> true
        | d ->
            if n mod d = 0 then false
            else itr (d - 1)
    in itr r

let test_primes xs = List.for_all is_prime xs

let test_triple xs = test_common_difference xs && test_primes xs

let digits n =
    let rec itr xs = function
        | 0 -> xs
        | n -> itr (n mod 10 :: xs) (n / 10)
    in itr [] n

let concat_digits xs =
    let rec itr n = function
        | []      -> n
        | y :: ys -> itr (n * 10 + y) ys
    in itr 0 xs

let test n =
    let ds = digits n in
    let ps = List.filter (fun p -> p > n)
        @@ List.map concat_digits @@ permutations ds in
    let cs = List.map (fun c -> n :: c) @@ combinations ps 2 in
    try (true, List.find test_triple cs)
    with _ -> (false, [])

let _ =
    let rec itr n =
        let res, perms = test n in
        if res then begin
            List.iter print_int @@ List.sort compare perms;
            print_newline ();
        end
        else itr (n + 1)
    in itr 1488
