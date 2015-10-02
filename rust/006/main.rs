/*
    ProjectEuler 006
    Rust / main.rs
    copyright (c) 2015 Susisu

    Rust 1.3.0
    `rustc main.rs -o bin/main`
*/

fn main() {
    let mut sum = 0;
    for i in 1..101 {
        for j in (i + 1)..101 {
            sum += 2 * i * j;
        }
    }
    println!("{}", sum);
}
