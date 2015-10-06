/*
    ProjectEuler 010
    Rust / main.rs
    copyright (c) 2015 Susisu

    Rust 1.3.0
    `rustc main.rs -o bin/main`
*/

fn main() {
    const N: usize = 2000000;
    let mut table: Vec<bool> = Vec::new();
    table.reserve(N);
    while table.len() < N {
        table.push(true);
    }
    table[0] = false;
    table[1] = false;
    let r = (N as f32).sqrt().ceil() as usize;
    for i in 2..r {
        if table[i] {
            let mut j = i * i;
            while j < N {
                table[j] = false;
                j += i;
            }
        }
    }
    let mut sum: u64 = 0;
    for i in 0..N {
        if table[i] {
            sum += i as u64;
        }
    }
    println!("{}", sum);
}
