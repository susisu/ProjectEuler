(*
    ProjectEuler 028
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let rec spiral s i n m =
    if n > m then s
    else spiral (s + 4 * i + 20 * n) (i + 8 * n) (n + 1) m

let main _ =
    let r = spiral 1 1 1 500 in
    print_int r;
    print_newline ()

let _ = main ()
