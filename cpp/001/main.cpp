/*
 * ProjectEuler 001
 * C++ / main.cpp
 * copyright (c) 2015 Susisu
 *
 * GCC / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `g++ main.cpp -o bin/main`
 */

#include <iostream>

int main() {
    int sum = 0;
    for (int n = 1; n < 1000; ++n) {
        if (n % 3 == 0 || n % 5 == 0) {
            sum += n;
        }
    }
    std::cout << sum << std::endl;
    return 0;
}
