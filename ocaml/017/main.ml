(*
    ProjectEuler 017
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main -linkpkg -package core -thread nums.cmxa main.ml`
*)

open Core;;

let words_under_20 = [|
        "zero";
        "one";
        "two";
        "three";
        "four";
        "five";
        "six";
        "seven";
        "eight";
        "nine";
        "ten";
        "eleven";
        "twelve";
        "thirteen";
        "fourteen";
        "fifteen";
        "sixteen";
        "seventeen";
        "eighteen";
        "nineteen"
    |]

let words_multiple_10 = [|
        "zero";
        "ten";
        "twenty";
        "thirty";
        "forty";
        "fifty";
        "sixty";
        "seventy";
        "eighty";
        "ninety"
    |]

let rec word_of_number ?(conj=false) n =
    if n <= 0    then ""
    else
        let c    = if conj then "and" else "" in
        let word =
                 if n < 20    then Array.get words_under_20 n
            else if n < 100   then Array.get words_multiple_10 (n / 10) ^ word_of_number (n mod 10) 
            else if n < 1000  then Array.get words_under_20 (n / 100) ^ "hundred" ^ word_of_number ~conj:true (n mod 100)
            else if n == 1000 then "onethousand"
            else ""
        in c ^ word

let main _ =
    let xs    = Core_list.range ~stop:`inclusive 1 1000 in
    let words = List.map word_of_number xs in
    let wls   = List.map String.length words in
    print_int (List.fold_left (+) 0 wls);
    print_newline ()

let _ = main ()
