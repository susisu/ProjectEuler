(*
    ProjectEuler 045
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let tri n = n * (n + 1) /2
let penta n = n * (3 * n - 1) / 2
let hexa n = n * (2 * n - 1)

(* tri 285 = penta 165 = hexa 143 = 40755 *)

let nt = 285
let np = 165
let nh = 143 + 1

let _ =
    let rec itr h p t nh np nt =
        if p < h then itr h (penta (np + 1)) t nh (np + 1) nt
        else if t < h then  itr h p (tri (nt + 1)) nh np (nt + 1)
        else if p = h && t = h then h
        else itr (hexa (nh + 1)) p t (nh + 1) np nt
    in
    print_int @@ itr (hexa nh) (penta np) (tri nt) nh np nt;
    print_newline ()
