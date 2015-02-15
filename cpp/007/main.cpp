/*
 * ProjectEuler 007
 * C++ / main.cpp
 * copyright (c) 2015 Susisu
 *
 * Clang / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `clang++ -std=c++11 -stdlib=libc++ main.cpp -o bin/main`
 */

#include <iostream>
#include <cmath>

bool isPrime(int n) {
    if (n <= 1) {
        return false;
    }
    else {
        int r = floor(sqrt(n));
        for (int m = 2; m <= r; m++) {
            if (n % m == 0) {
                return false;
            }
        }
        return true;
    }
}

int main() {
    int n = 2;
    int counter = 0;
    while (true) {
        if (isPrime(n)) {
            counter++;
            if (counter == 10001) {
                std::cout << n << std::endl;
                return 0;
            }
        }
        n++;
    }
    return 0;
}
