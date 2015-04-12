(*
    ProjectEuler 008
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.1
    `ocamlc main.ml -o bin/main`
*)

let n = 13;;

let int_of_digit d = let n = int_of_char d - 48 in if n < 0 || n > 10 then 0 else n;;

let rec calc digits i len max =
    if i >= len - n then
        max
    else
        let rec loop j p =
            if j >= n then p
            else let n = int_of_digit (String.get digits (i + j)) in loop (j + 1) (p * n)
        in
        let p = loop 0 1 in
        if p > max then calc digits (i + 1) len p
        else calc digits (i + 1) len max
;;

let main () =
    let ic = open_in "./digits.txt" in
    try
        let digits = input_line ic in
        print_int (calc digits 0 (String.length digits) 0);
        print_newline ();
        close_in ic
    with e ->
        close_in_noerr ic;
        raise e
;;

main ();;
