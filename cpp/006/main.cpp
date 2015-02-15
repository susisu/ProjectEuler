/*
 * ProjectEuler 006
 * C++ / main.cpp
 * copyright (c) 2015 Susisu
 *
 * Clang / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `clang++ -std=c++11 -stdlib=libc++ main.cpp -o bin/main`
 */

#include <iostream>

int main() {
    int s = 0;
    int t = 0;
    for (int n = 1; n <= 100; n++) {
        s += n;
        t += n * n;
    }
    std::cout << (s * s - t) << std::endl;
    return 0;
}
