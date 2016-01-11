(*
    ProjectEuler 019
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main nums.cmxa main.ml`
*)

let days = [|
        31;
        28;
        31;
        30;
        31;
        30;
        31;
        31;
        30;
        31;
        30;
        31
    |]

let is_leap y = (y mod 4 = 0 && y mod 100 <> 0) || y mod 400 = 0

let day y m =
    if is_leap y && m = 1 then Array.get days m + 1
    else Array.get days m

let main _ =
    let rec itr c y m d =
        if y > 2000 then c
        else if m > 11 then itr c (y + 1) 0 d
        else
            let c' = if y > 1900 && d = 0 then c + 1 else c in
            itr c' y (m + 1) ((d + day y m) mod 7)
    in
    print_int (itr 0 1900 0 1);
    print_newline ()

let _ = main ()
