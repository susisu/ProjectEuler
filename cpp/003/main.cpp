/*
 * ProjectEuler 003
 * C++ / main.cpp
 * copyright (c) 2015 Susisu
 *
 * GCC / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `g++ main.cpp -o bin/main`
 */

#include <iostream>

int main() {
    int64_t n = 600851475143;
    int64_t p = 2;
    while (n > 1) {
        if (n % p == 0) {
            n /= p;
        }
        else {
            p++;
        }
    }
    printf("%lld\n", p);
    return 0;
}
