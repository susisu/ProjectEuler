(*
    ProjectEuler 036
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let log_base b x = log x /. log b

let is_palindrome_base b n =
    let bf = float_of_int b in
    let e = int_of_float @@ bf ** (floor @@ log_base bf @@ float_of_int n) in
    let rec itr r = function
        | 0 -> true
        | e ->
            let h = r / e in
            let l = r mod b in
            if h = l then itr (r mod e / b) (e / b / b)
            else false
    in itr n e

let is_palindrome_2 n = is_palindrome_base 2 n
let is_palindrome_10 n = is_palindrome_base 10 n

let _ =
    let upper = 1_000_000 in
    let rec itr s n =
        if n >= upper then s
        else if is_palindrome_2 n && is_palindrome_10 n then itr (s + n) (n + 1)
        else itr s (n + 1)
    in
    print_int (itr 0 1);
    print_newline ()
