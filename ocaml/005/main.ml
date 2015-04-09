(*
    ProjectEuler 005
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.1
    `ocamlc main.ml -o bin/main`
*)

let rec gcd a b =
    if a < b then
        gcd b a
    else if b = 0 then
        a
    else
        gcd b (a mod b);;

let rec calc n p =
    if n <= 20 then
        calc (n + 1) (p * n / gcd p n)
    else
        p;;

let main () = begin
    print_int (calc 1 1);
    print_newline ()
end;;

main ();;
