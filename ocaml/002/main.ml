(*
    ProjectEuler 002
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.1
    `ocamlc main.ml -o bin/main`
*)

let rec calc a b max sum =
    if a <= max then
        if a mod 2 = 0 then
            calc b (a + b) max (sum + a)
        else
            calc b (a + b) max sum
    else
        sum;;

let main () =
    begin
        print_int (calc 1 1 4000000 0);
        print_newline ()
    end;;

main ();;
