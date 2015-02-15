/*
 * ProjectEuler 010
 * C++ / main.cpp
 * copyright (c) 2015 Susisu
 *
 * Clang / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `clang++ -std=c++11 -stdlib=libc++ main.cpp -o bin/main`
 */

#include <iostream>
#include <vector>
#include <cmath>

#define N 2000000

int main() {
    if (N < 2) {
        std::cout << 0 << std::endl;
        return 0;
    }

    std::vector<bool> table(N, true);
    table.at(0) = false;
    table.at(1) = false;
    int r = floor(sqrt(N));
    for (int i = 2; i <= r; i++) {
        if (table.at(i)) {
            for (int n = i * i; n < N; n += i) {
                table.at(n) = false;
            }
        }
    }

    long long sum = 0;
    for (int i = 0; i < N; i++) {
        if (table.at(i)) {
            sum += i;
        }
    }
    std::cout << sum << std::endl;
    return 0;
}
