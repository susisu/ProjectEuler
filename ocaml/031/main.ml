(*
    ProjectEuler 031
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let coins = [200; 100; 50; 20; 10; 5; 2; 1]

let rec patterns rest = function
      [] when rest = 0        -> 1
    | []                      -> 0
    | (x :: xs) when x > rest -> patterns rest xs
    | (x :: xs) as cs         -> patterns rest xs + patterns (rest - x) cs

let _ =
    print_int (patterns 200 coins);
    print_newline ()
