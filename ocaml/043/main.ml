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
 
let concat_permutation xs =
    let rec itr n = function
        | []      -> n
        | y :: ys -> itr (n * 10 + y) ys
    in itr 0 xs

let take n xs =
    let rec itr ys = function
        | _, []      -> List.rev ys
        | 0, _       -> List.rev ys
        | n, x :: xs -> itr (x :: ys) (n - 1, xs)
    in itr [] (n, xs)

let rec drop n = function
    | [] -> []
    | xs ->
        if n = 0 then xs
        else drop (n - 1) (List.tl xs)

let concat3 n xs = concat_permutation @@ take 3 @@ drop n xs

let test xs =
    let t2, t3, t5, t7, t11, t13, t17 =
        concat3 1 xs, concat3 2 xs, concat3 3 xs, concat3 4 xs,
        concat3 5 xs, concat3 6 xs, concat3 7 xs
    in 
    t2 mod 2 = 0 && t3 mod 3 = 0 && t5 mod 5 = 0 && t7 mod 7 = 0 &&
    t11 mod 11 = 0 && t13 mod 13 = 0 && t17 mod 17 = 0

let init_permutation = [9; 8; 7; 6; 5; 4; 3; 2; 1; 0]

let factorial n =
    let rec itr p = function
        | 0 -> p
        | r -> itr (p * r) (r - 1)
    in itr 1 n

let _ =
    let f = factorial 10 in
    let rec itr s p = function
        | 0 -> s 
        | n ->
            if test p then itr (s + concat_permutation p) (next_permutaion p) (n - 1)
            else itr s (next_permutaion p) (n - 1)
    in
    print_int (itr 0 init_permutation f);
    print_newline ()
