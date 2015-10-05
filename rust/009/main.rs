/*
    ProjectEuler 009
    Rust / main.rs
    copyright (c) 2015 Susisu

    Rust 1.3.0
    `rustc main.rs -o bin/main`
*/

fn main() {
    for a in 1..334 {
        for b in (a + 1)..((1000 - a + 1) / 2) {
            let c: u32 = 1000 - a - b;
            if a.pow(2) + b.pow(2) == c.pow(2) {
                println!("{}", a * b * c);
                return;
            }
        }
    }
}
