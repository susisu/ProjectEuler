# ProjectEuler 003
# Python / main.py
# copyright (c) 2015 Susisu
#
# Python 3.4.2
# `python3 main.py`


def main():
    n = 600851475143
    p = 2
    while n > 1:
        if n % p == 0:
            n /= p
        else:
            p += 1
    print(p)

main()
