(*
    ProjectEuler 038
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

(*
    1 1 1 1 1 1 1 1 1
    1 2 2 2 2
    2 2 2 3
    3 3 3
    4 5
*)

let concat ps =
    let rec itr s = function
        | []      -> s
        | x :: xs -> itr (string_of_int x ^ s) xs
    in itr "" ps

let test n =
    let table = Array.make 9 false in
    let rec fill = function
        | 0 -> true
        | n ->
            let m = n mod 10 in
            if m = 0 then false
            else if Array.get table (m - 1) then false
            else begin
                Array.set table (m - 1) true;
                fill (n / 10)
            end
    in let rec itr ps m =
        if fill (n * m) then
            let rps = (n * m) :: ps in
            if Array.fold_left (&&) true table then true, concat rps
            else itr rps (m + 1)
        else false, ""
    in itr [] 1

let max_string a b =
    if String.compare a b < 0 then b
    else a

let _ =
    let rec itr m = function
        | 10000 -> m
        | n     ->
            let res, p = test n in
            if res then itr (max_string m p) (n + 1)
            else itr m (n + 1)
    in print_endline (itr "" 1)
