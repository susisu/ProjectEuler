/*
    ProjectEuler 001
    Rust / main.rs
    copyright (c) 2015 Susisu

    Rust 1.3.0
    `rustc main.rs -o bin/main`
*/

fn main() {
    let n: i32 = (1..1000)
        .filter(|&i| i % 3 == 0 || i % 5 == 0)
        .fold(0, |acc, i| acc + i);
    println!("{}", n);
}
