(*
    ProjectEuler 042
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main -linkpkg -package core -thread main.ml`
*)

open Core

let alph_position c = Char.code c - Char.code 'A' + 1

let word_value w =
    let ps = List.map alph_position @@ Core_string.to_list w in
    List.fold_left (+) 0 ps

let is_triangle n =
    let m = n * 2 in
    let r = int_of_float @@ floor @@ sqrt @@ float_of_int m in
    r * (r + 1) = m

let _ =
    let ic = open_in "./words.txt" in
    try
        let raw_words = input_line ic in
        let words = List.map (fun x -> Core_string.slice x 1 (-1))
            @@ Core_string.split raw_words ',' in
        let values = List.map word_value words in
        let triangles = List.filter is_triangle values in
        print_int (List.length triangles);
        print_newline ()
    with
    | err ->
        close_in_noerr ic;
        raise err
