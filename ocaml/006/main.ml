(*
    ProjectEuler 006
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.1
    `ocamlc main.ml -o bin/main`
*)

let rec calc n s t =
    if n <= 100 then
        calc (n + 1) (s + n) (t + n * n)
    else
        s * s - t;;

let main () = begin
    print_int (calc 1 0 0);
    print_newline ()
end;;

main ();;
