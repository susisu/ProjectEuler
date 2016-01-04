(*
    ProjectEuler 015
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let combination n r =
    let rec itr p i =
        if i > r then p
        else itr (p * (n - r + i) / i) (i + 1)
    in itr 1 1

let main _ =
    print_int (combination 40 20);
    print_newline ()

let _ = main ()
