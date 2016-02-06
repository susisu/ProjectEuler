(*
    ProjectEuler 032
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main -linkpkg -package core -thread main.ml`
*)

(*
    1 4 4
    2 3 4
*)

open Core

let is_pandigital a b p =
    let sa = string_of_int a in
    let sb = string_of_int b in
    let sp = string_of_int p in
    let s  = sa ^ sb ^ sp in
    let ss = Core_string.of_char_list (List.sort Char.compare (Core_string.to_list s)) in
    ss = "123456789"

let ps1 =
    let rec itr s a b =
        if a > 9 then s
        else if b > 9999 / a then itr s (a + 1) 1000
        else let p = a * b in
            if is_pandigital a b p then itr (p :: s) a (b + 1)
            else itr s a (b + 1)
    in itr [] 1 1000

let ps2 =
    let rec itr s a b =
        if a > 99 then s
        else if b > 9999 / a then itr s (a + 1) 100
        else let p = a * b in
            if is_pandigital a b p then itr (p :: s) a (b + 1)
            else itr s a (b + 1)
    in itr [] 10 100

let _ =
    let ps  = Core_list.dedup (ps1 @ ps2) in
    let sum = List.fold_left (+) 0 ps in
    print_int sum;
    print_newline ()
