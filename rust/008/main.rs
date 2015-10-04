/*
    ProjectEuler 008
    Rust / main.rs
    copyright (c) 2015 Susisu

    Rust 1.3.0
    `rustc main.rs -o bin/main`
*/

use std::fs::File;
use std::error::Error;
use std::io::prelude::*;

fn main() {
    let mut file = match File::open("digits.txt") {
        Err(why) => panic!("couldn't open file: {}", Error::description(&why)),
        Ok(file) => file
    };
    let mut str = String::new();
    let res = match file.read_to_string(&mut str) {
        Err(why) => panic!("couldn't read file: {}", Error::description(&why)),
        Ok(_)    => calc(str.chars().collect())
    };
    println!("{}", res);
}

fn digit_to_i64(digit: char) -> i64 {
    match digit.to_string().parse::<i64>() {
        Err(_) => 0,
        Ok(n)  => n
    }
}

fn calc(chars: Vec<char>) -> i64 {
    let mut max = 0;
    for i in 0..(chars.len() - 12) {
        let mut p = 1;
        for j in 0..13 {
            p *= digit_to_i64(chars[i + j]);
        }
        if p > max {
            max = p;
        }
    }
    return max;
}
