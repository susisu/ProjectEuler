/*
    ProjectEuler 003
    Rust / main.rs
    copyright (c) 2015 Susisu

    Rust 1.3.0
    `rustc main.rs -o bin/main`
*/

fn main() {
    let mut n: i64 = 600851475143;
    let mut d: i64 = 2;
    while n > 1 {
        if n % d == 0 {
            n /= d;
        }
        else {
            d += 1;
        }
    }
    println!("{}", d);
}
