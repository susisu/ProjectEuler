(*
    ProjectEuler 033
    OCaml / main.ml
    copyright (c) 2016 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main main.ml`
*)

let rec gcd a = function
    | 0 -> a
    | b -> gcd b (a mod b)

let f1 =
    let rec itr r p =
        let n, d = r in
        match p with
            | 10, _, _            -> r
            | c, 10, _            -> itr r (c + 1, 1, 2)
            | c, a, 10            -> itr r (c, a + 1, a + 2)
            | c, a, b when a >= b -> itr r (c + 1, 1, 2)
            | c, a, b ->
                let s = 10 * a + c in
                let t = 10 * b + c in
                if s <> t && s * b = t * a then itr (n * a, d * b) (c, a, b + 1)
                else itr r (c, a, b + 1)
    in itr (1, 1) (1, 1, 2)

let f2 =
    let rec itr r p =
        let n, d = r in
        match p with
            | 10, _, _            -> r
            | c, 10, _            -> itr r (c + 1, 1, 2)
            | c, a, 10            -> itr r (c, a + 1, a + 2)
            | c, a, b when a >= b -> itr r (c + 1, 1, 2)
            | c, a, b ->
                let s = 10 * c + a in
                let t = 10 * c + b in
                if s <> t && s * b = t * a then itr (n * a, d * b) (c, a, b + 1)
                else itr r (c, a, b + 1)
    in itr (1, 1) (1, 1, 2)

let f3 =
    let rec itr r p =
        let n, d = r in
        match p with
            | 10, _, _            -> r
            | c, 10, _            -> itr r (c + 1, 1, 2)
            | c, a, 10            -> itr r (c, a + 1, a + 2)
            | c, a, b when a >= b -> itr r (c + 1, 1, 2)
            | c, a, b ->
                let s = 10 * a + c in
                let t = 10 * c + b in
                if s <> t && s * b = t * a then itr (n * a, d * b) (c, a, b + 1)
                else itr r (c, a, b + 1)
    in itr (1, 1) (1, 1, 2)

let f4 =
    let rec itr r p =
        let n, d = r in
        match p with
            | 10, _, _            -> r
            | c, 10, _            -> itr r (c + 1, 1, 2)
            | c, a, 10            -> itr r (c, a + 1, a + 2)
            | c, a, b when a >= b -> itr r (c + 1, 1, 2)
            | c, a, b ->
                let s = 10 * c + a in
                let t = 10 * b + c in
                if s <> t && s * b = t * a then itr (n * a, d * b) (c, a, b + 1)
                else itr r (c, a, b + 1)
    in itr (1, 1) (1, 1, 2)

let _ =
    let n1, d1 = f1 in
    let n2, d2 = f2 in
    let n3, d3 = f3 in
    let n4, d4 = f4 in
    let n = n1 * n2 * n3 * n4 in
    let d = d1 * d2 * d3 * d4 in
    let g = gcd d n in
    print_int (d / g);
    print_newline ()
