(*
    ProjectEuler 004
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.1
    `ocamlc main.ml -o bin/main`
*)

open String;;

let reverse_string str =
    let len = String.length str in
    let rec itr str lst index =
        if index = len then
            String.concat "" lst
        else
            itr str (String.sub str index 1 :: lst) (index + 1)
    in itr str [] 0;;

let is_palindrome n = let s = string_of_int n in s = reverse_string s;;

let rec calc a b p =
    if a >= 1000 then
        p
    else if b >= 1000 then
        calc (a + 1) (a + 1) p
    else
        let q = a * b in
        if is_palindrome q && q > p then
            calc a (b + 1) q
        else
            calc a (b + 1) p;;

let main () = begin
    print_int (calc 1 1 0);
    print_newline ()
end;;

main ();;
