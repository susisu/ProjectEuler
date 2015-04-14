(*
    ProjectEuler 010
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.1
    `ocamlc main.ml -o bin/main`
*)

let n = 2000000;;

let sieve table =
    let r = int_of_float (floor (sqrt (float_of_int n))) in
    let rec loop i =
        if i <= r then begin
            if Array.get table i then begin
                let rec fill j =
                    if j < n then begin
                        Array.set table j false;
                        fill (j + i)
                    end
                in fill (i * i)
            end;
            loop (i + 1)
        end
    in loop 2
;;

let total table =
    let rec loop i s =
        if i < n then begin
            if Array.get table i then
                loop (i + 1) (s + i)
            else
                loop (i + 1) s
        end
        else s
    in loop 0 0
;;

let main () =
    let table = Array.make n true in
    Array.set table 0 false;
    Array.set table 1 false;
    sieve table;
    print_int (total table);
    print_newline ()
;;

main ();;
