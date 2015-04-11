(*
    ProjectEuler 007
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.1
    `ocamlc main.ml -o bin/main`
*)

let is_prime n =
    let rec loop n m =
        if float_of_int m > sqrt (float_of_int n) then
            true
        else if n mod m = 0 then
            false
        else
            loop n (m + 1)
    in if n < 2 then false else loop n 2;;

let rec calc n c =
    if is_prime n then
        if c = 10000 then n else calc (n + 1) (c + 1)
    else
        calc (n + 1) c;;

let main () = begin
    print_int (calc 1 0);
    print_newline ()
end;;

main ();;
