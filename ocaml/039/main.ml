(*
    ProjectEuler 039
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let max_p = 1000

let _ =
    let num_solutions = Array.make max_p 0 in
    let rec count = function
        | 334, _ -> ()
        | a, b   ->
            let x = a * a + b * b in
            let c = int_of_float @@ floor @@ sqrt @@ float_of_int x in
            let p = a + b + c in
            if p > max_p then count (a + 1, a + 1)
            else begin
                if c * c = x then Array.set num_solutions (p - 1) (Array.get num_solutions (p - 1) + 1);
                count (a, b + 1)
            end
    in
    let rec find p m mp =
        if p > max_p then mp
        else
            let n = Array.get num_solutions (p - 1) in
            if n > m then find (p + 1) n p
            else find (p + 1) m mp
    in
    count (1, 1);
    let p = find 1 0 0 in
    print_int p;
    print_newline ()
