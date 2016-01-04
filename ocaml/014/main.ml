(*
    ProjectEuler 014
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let n = 1_000_000

let main _ =
    let memo  = Array.make n (-1) in
    let max   = ref 0 in
    let max_c = ref 0 in
    let rec itr c i =
        if i < n then
            let c' = Array.get memo i in
            if c' >= 0 then c + c'
            else if i mod 2 = 0 then itr (c + 1) (i / 2)
            else itr (c + 1) (3 * i + 1)
        else if i mod 2 = 0 then itr (c + 1) (i / 2)
        else itr (c + 1) (3 * i + 1)
    in
    Array.set memo 1 0;
    for i = 2 to n - 1 do
        let c = itr 0 i in
        Array.set memo i c;
        if c > !max_c then begin
            max   := i;
            max_c := c
        end
    done;
    print_int !max;
    print_newline ()

let _ = main ()
