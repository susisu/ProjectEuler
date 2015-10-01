/*
    ProjectEuler 002
    Rust / main.rs
    copyright (c) 2015 Susisu

    Rust 1.3.0
    `rustc main.rs -o bin/main`
*/

fn main() {
    let n = calc(0, 1, 2, 4000000);
    println!("{}", n);
}

fn calc(acc: i32, a: i32, b: i32, max: i32) -> i32 {
    if a <= max {
        calc(if a % 2 == 0 { acc + a } else { acc }, b, a + b, max)
    }
    else {
        acc
    }
}
