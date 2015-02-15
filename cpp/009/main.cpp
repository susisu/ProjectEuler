/*
 * ProjectEuler 009
 * C++ / main.cpp
 * copyright (c) 2015 Susisu
 *
 * Clang / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `clang++ -std=c++11 -stdlib=libc++ main.cpp -o bin/main`
 */

#include <iostream>

int main() {
    for (int a = 1; a <= 332; a++) {
        for (int b = a + 1; b < 1000 - a - b; b++) {
            if (2 * a * b - 2000 * (a + b) + 1000000 == 0) {
                std::cout << (a * b * (1000 - a - b)) << std::endl;
                return 0;
            }
        }
    }
    return 0;
}
