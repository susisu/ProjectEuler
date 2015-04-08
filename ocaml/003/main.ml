(*
    ProjectEuler 002
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.1
    `ocamlc main.ml -o bin/main`
*)

let rec calc n p =
    if n = 1 then
        p
    else if n mod p = 0 then
        calc (n / p) p
    else
        calc n (p + 1);;

let main () =
    begin
        print_int (calc 600851475143 2);
        print_newline ()
    end;;

main ();;
