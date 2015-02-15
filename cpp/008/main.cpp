/*
 * ProjectEuler 008
 * C++ / main.cpp
 * copyright (c) 2015 Susisu
 *
 * Clang / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `clang++ -std=c++11 -stdlib=libc++ main.cpp -o bin/main`
 */

#include <iostream>
#include <fstream>
#include <string>

#define N 13

int digitToInt(char c) {
    int n = c - '0';
    if (n < 0 || 10 <= n) {
        return 0;
    }
    else {
        return n;
    }
}

int main() {
    std::ifstream fs("./digits.txt");
    std::string digits;

    fs >> digits;

    int len = digits.length();
    long long max = 0;
    for (int i = 0; i <= len - N; i++) {
        long long prod = 1;
        for (int j = 0; j < N; j++) {
            prod *= digitToInt(digits.at(i + j));
        }
        if (prod > max) {
            max = prod;
        }
    }

    std::cout << max << std::endl;
    return 0;
}
