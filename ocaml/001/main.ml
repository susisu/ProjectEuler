(*
    ProjectEuler 001
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.1
    `ocamlc main.ml -o bin/main`
*)

let rec calc n max sum =
    if n <= max then
        if n mod 3 = 0 || n mod 5 = 0 then
            calc (n + 1) max (sum + n)
        else
            calc (n + 1) max sum
    else
        sum;;

let main () =
    begin
        print_int (calc 1 999 0);
        print_newline ()
    end;;

main ();;
