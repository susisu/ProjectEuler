(*
    ProjectEuler 044
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let penta n = n * (3 * n - 1) / 2

let is_penta = function
    | 1 -> true
    | p ->
        let q = 2 * p / 3 in
        let n = int_of_float (0.5 +. sqrt (float_of_int q)) in
        n * (3 * n - 1) / 2 = p

let _ =
    let rec itr n pn j =
        if 3 * j - 2 > pn then itr (n + 1) (penta (n + 1)) (n + 2)
        else
            let pj = penta j in
            let pk = pj - pn in
            if is_penta pk && is_penta (pj + pk) then pn
            else itr n pn (j + 1)
    in
    print_int (itr 1 (penta 1) 2);
    print_newline ()
