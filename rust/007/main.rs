/*
    ProjectEuler 007
    Rust / main.rs
    copyright (c) 2015 Susisu

    Rust 1.3.0
    `rustc main.rs -o bin/main`
*/

fn main() {
    let mut count = 0;
    let mut primes = vec![];
    let mut n = 1;
    while count < 10001 {
        n += 1;
        let mut is_prime = true;
        for p in primes.iter() {
            if n % p == 0 {
                is_prime = false;
                break;
            }
        }
        if is_prime {
            primes.push(n);
            count += 1;
        }
    }
    println!("{}", n);
}
