(*
    ProjectEuler 027
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let is_prime n =
    let rec itr n m =
        if float_of_int m > sqrt (float_of_int n) then true
        else if n mod m = 0 then false
        else itr n (m + 1)
    in
    if n < 2 then false
    else itr n 2

let seq a b =
    let rec itr c n =
        let p = n * n + a * n + b in
        if is_prime p then itr (c + 1) (n + 1)
        else c
    in itr 0 0

let main _ =
    let rec itr m ma mb a b =
        if a > 1000 then ma * mb
        else if b > 1000 then itr m ma mb (a + 1) 2
        else
            let c = seq a b in
            if c > m then itr c a b a (b + 1)
            else itr m ma mb a (b + 1)
    in
    let m = itr 0 0 0 (-1000) 2 in
    print_int m;
    print_newline ()

let _ = main ()
