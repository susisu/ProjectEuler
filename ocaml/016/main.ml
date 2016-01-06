(*
    ProjectEuler 016
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main nums.cmxa main.ml`
*)

let int_of_digit d =
    let n = int_of_char d - 48 in
    if n < 0 || n > 10 then 0
    else n

let main _ =
    let n = Big_int.power_int_positive_int 2 1000 in
    let s = Big_int.string_of_big_int n in
    let l = String.length s in
    let rec itr sum i =
        if i >= l then sum
        else let t = int_of_digit (String.get s i) in
            itr (sum + t) (i + 1)
    in
    print_int (itr 0 0);
    print_newline ()

let _ = main ()
