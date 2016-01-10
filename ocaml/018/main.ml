(*
    ProjectEuler 018
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main -linkpkg -package core -thread nums.cmxa main.ml`
*)

open Core

let descend xs ys =
    let xs_ = xs @ [0] in
    let _xs = 0 :: xs in
    let xs' = List.map2 max xs_ _xs in
    List.map2 (+) xs' ys

let line_int_stream_of_channel ic =
    Stream.from (fun _ ->
        try
            let line = input_line ic in
            let nums = List.map int_of_string (Core_string.split line ' ') in
            Some nums
        with End_of_file -> None
    )

let read_numbers_line ic =
    let line = input_line ic in
    let nums = Core_string.split line ' ' in
    List.map (int_of_string) nums

let main _ =
    let ic = open_in "./numbers.txt" in
    try
        let st = line_int_stream_of_channel ic in
        let ns = Stream.npeek 15 st in
        let b  = List.fold_left descend [] ns in
        print_int (List.fold_left max 0 b);
        print_newline ();
        close_in ic
    with
    | err ->
        close_in_noerr ic;
        raise err

let _ = main ()
