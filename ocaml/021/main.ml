(*
    ProjectEuler 021
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

let main _ =
    let rec itr s n =
        if n >= 10000 then s
        else
            let m = d n in
            if n <> m && n = d m then itr (s + n) (n + 1)
            else itr s (n + 1)
    in
    let s = itr 0 1 in
    print_int s;
    print_newline ()

let _ = main ()
