/*
    ProjectEuler 005
    Rust / main.rs
    copyright (c) 2015 Susisu

    Rust 1.3.0
    `rustc main.rs -o bin/main`
*/

fn main() {
    let mut n = 1;
    for i in 1..20 {
        n /= gcd(n, i);
        n *= i;
    }
    println!("{}", n);
}

fn gcd(m: i32, n: i32) -> i32 {
    if m < n {
        gcd(n, m)
    }
    else if n > 0 {
        gcd(n, m % n)
    }
    else {
        m
    }
}
