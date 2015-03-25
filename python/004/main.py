# ProjectEuler 004
# Python / main.py
# copyright (c) 2015 Susisu
#
# Python 3.4.2
# `python3 main.py`


def main():
    maximum = 0
    for i in range(100, 1000):
        for j in range(i, 1000):
            p = i * j
            if isPalindrome(p) and p > maximum:
                maximum = p
    print(maximum)

def isPalindrome(n):
    s = str(n)
    return s == s[::-1]

main()
