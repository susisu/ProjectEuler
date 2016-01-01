(*
    ProjectEuler 011
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main -linkpkg -package core -thread main.ml`
*)

open Core;;

let width = 20
let height = 20

let read_numbers_line ic =
    let line = input_line ic in
    let nums = Core_string.split line ' ' in
    List.map (int_of_string) nums

let read_numbers ic =
    Array.init height (fun _ -> Array.of_list (read_numbers_line ic))

let get_at arr x y =
    Array.get (Array.get arr y) x

let max_v nums =
    let max = ref 0 in
    for x = 0 to width - 1 do
        for y = 0 to height - 4 do
            let p = ref 1 in
            for i = 0 to 3 do
                p := !p * get_at nums x (y + i)
            done;
            if !p > !max then
                max := !p
            else ()
        done
    done;
    !max

let max_h nums =
    let max = ref 0 in
    for x = 0 to width - 4 do
        for y = 0 to height - 1 do
            let p = ref 1 in
            for i = 0 to 3 do
                p := !p * get_at nums (x + i) y
            done;
            if !p > !max then
                max := !p
            else ()
        done
    done;
    !max

let max_d1 nums =
    let max = ref 0 in
    for x = 0 to width - 4 do
        for y = 0 to height - 4 do
            let p = ref 1 in
            for i = 0 to 3 do
                p := !p * get_at nums (x + i) (y + i)
            done;
            if !p > !max then
                max := !p
            else ()
        done
    done;
    !max

let max_d2 nums =
    let max = ref 0 in
    for x = 3 to width - 1 do
        for y = 0 to height - 4 do
            let p = ref 1 in
            for i = 0 to 3 do
                p := !p * get_at nums (x - i) (y + i)
            done;
            if !p > !max then
                max := !p
            else ()
        done
    done;
    !max

let main () =
    let ic = open_in "./numbers.txt" in
    try
        let nums = read_numbers ic in
        let ms = [max_v nums; max_h nums; max_d1 nums; max_d2 nums] in
        print_int (List.fold_left max 0 ms);
        print_newline ()
    with err ->
        close_in_noerr ic;
        raise err

let _ = main ()
