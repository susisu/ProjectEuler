(*
    ProjectEuler 022
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main -linkpkg -package core -thread main.ml`
*)

open Core

let value_of_char c = Char.code c - Char.code 'A' + 1

let value_of_name name =
    let chars = Core_string.to_list name in
    List.fold_left (+) 0 (List.map value_of_char chars)

let main _ =
    let ic = open_in "./names.txt" in
    try
        let names_string = input_line ic in
        let names_quoted = Core_string.split names_string ',' in
        let names        = List.map (fun s -> Core_string.slice s 1 (-1)) names_quoted in
        let names_sorted = List.sort String.compare names in
        let scores       = List.mapi (fun i s -> (i + 1) * value_of_name s) names_sorted in
        let total_score  = List.fold_left (+) 0 scores in
        print_int total_score;
        print_newline ()
    with
    | e ->
        close_in_noerr ic;
        raise e

let _ = main ()
