/*
    ProjectEuler 004
    Rust / main.rs
    copyright (c) 2015 Susisu

    Rust 1.3.0
    `rustc main.rs -o bin/main`
*/

fn main() {
    let mut max = 0;
    for x in 100..1000 {
        for y in x..1000 {
            let z = x * y;
            let s = z.to_string();
            if is_palindrome(s) && z > max {
                max = z;
            }
        }
    }
    println!("{}", max);
}

fn is_palindrome(str: String) -> bool {
    let chars = str.chars().collect::<Vec<_>>();
    let len = chars.len();
    for i in 0..len {
        if chars[i] != chars[len - 1 - i] {
            return false;
        }
    }
    return true;
}
