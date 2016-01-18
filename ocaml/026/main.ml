(*
    ProjectEuler 026
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let recurring_cycle n =
    let memo = Array.make n (-1) in
    let rec itr a i =
        if a = 0 then 0
        else
            let j = Array.get memo a in
            if j >= 0 then i - j
            else begin
                Array.set memo a i;
                itr ((a * 10) mod n) (i + 1)
            end
    in
    let p = ceil (log10 (float_of_int n)) -. 1.0 in
    let e = int_of_float (10.0 ** p) in
    itr e 0

let main _ =
    let rec itr max_c max_d d =
        if d >= 1000 then max_d
        else
            let c = recurring_cycle d in
            if c > max_c then itr c d (d + 1)
            else itr max_c max_d (d + 1)
    in
    let d = itr 0 0 2 in
    print_int d;
    print_newline ()

let _ = main ()
