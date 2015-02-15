/*
 * ProjectEuler 004
 * C++ / main.cpp
 * copyright (c) 2015 Susisu
 *
 * Clang / Apple LLVM version 6.0 (clang-600.0.56) (based on LLVM 3.5svn)
 * `clang++ -std=c++11 -stdlib=libc++ main.cpp -o bin/main`
 */

#include <iostream>

bool isPalindrome(int n) {
    std::string s = std::to_string(n);
    // std::string::iterator
    auto itr  = s.begin();
    // std::string::reverse_iterator
    auto ritr = s.rbegin();
    while (itr != s.end() && ritr != s.rend()) {
        if (*itr != *ritr) {
            return false;
        }
        itr++;
        ritr++;
    }
    return true;
}

int main() {
    int max = 0;
    for (int a = 100; a < 1000; a++) {
        for (int b = 100; b < 1000; b++) {
            int p = a * b;
            if (isPalindrome(p) && p > max) {
                max = p;
            }
        }
    }
    std::cout << max << std::endl;
    return 0;
}
