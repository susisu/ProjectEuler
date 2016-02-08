(*
    ProjectEuler 034
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let factorials = [|1; 1; 2; 6; 24; 120; 720; 5040; 40320; 362880|]

let max_n = 362880 * 7

let sum_of_factorials_of_digits n =
    let rec itr s = function
        | 0 -> s
        | r -> let f = Array.get factorials (r mod 10) in
            itr (s + f) (r / 10)
    in itr 0 n

let _ =
    let rec itr s n =
        if n >= max_n then s
        else let t = sum_of_factorials_of_digits n in
            if t = n then itr (s + n) (n + 1)
            else itr s (n + 1)
    in
    let s = itr 0 3 in
    print_int s;
    print_newline ()
