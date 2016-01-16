(*
    ProjectEuler 023
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let d n =
    if n <= 1 then 0
    else
        let rec itr s d =
            if n = d then s
            else if n mod d = 0 then itr (s + d) (d + 1)
            else itr s (d + 1)
        in
        itr 0 1

let abundants m =
    let rec itr xs n =
        if n > m   then xs
        else if d n > n then itr (n :: xs) (n + 1)
        else itr xs (n + 1)
    in
    List.rev (itr [] 0)

let upper_limit = 28123

let main _ =
    let xs = Array.of_list (abundants upper_limit) in
    let n  = Array.length xs in
    let memo = Array.make upper_limit false in
    let rec check i j =
        if i >= n then ()
        else if j >= n then check (i + 1) 0
        else
            let a = Array.get xs i in
            let b = Array.get xs j in
            if a + b <= upper_limit then Array.set memo (a + b - 1) true;
            check i (j + 1)
    in
    let rec calc_sum s i =
        if i >= upper_limit then s
        else if not (Array.get memo i) then calc_sum (s + i + 1) (i + 1)
        else calc_sum s (i + 1)
    in
    check 0 0;
    print_int (calc_sum 0 0);
    print_newline ()

let _ = main ()
