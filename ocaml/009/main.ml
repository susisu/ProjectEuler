(*
    ProjectEuler 009
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.1
    `ocamlc main.ml -o bin/main`
*)

let rec calc a b =
    if a > 332 then
        -1
    else if b >= 1000 - a - b then
        calc (a + 1) (a + 2)
    else if 2 * a * b - 2000 * (a + b) + 1000000 = 0 then
        let c = 1000 - a - b in a * b * c
    else
        calc a (b + 1)
;;

let main () =
    print_int (calc 1 2);
    print_newline ()
;;

main ();;
