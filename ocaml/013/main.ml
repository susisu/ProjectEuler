(*
    ProjectEuler 013
    OCaml / main.ml
    copyright (c) 2015 Susisu

    OCaml 4.02.3
    `ocamlfind ocamlopt -o bin/main nums.cmxa main.ml`
*)

let main _ =
    let ic = open_in "./numbers.txt" in
    try
        let rec itr s i =
            if i < 100 then
                let n = Big_int.big_int_of_string (input_line ic) in
                itr (Big_int.add_big_int s n) (i + 1)
            else s
        in
        let n   = itr Big_int.zero_big_int 0 in
        let str = Big_int.string_of_big_int n in
        print_endline (String.sub str 0 10)
    with
    | err ->
        close_in_noerr ic;
        raise err

let _ = main ()
