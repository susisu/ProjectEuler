# ProjectEuler 005
# Python / main.py
# copyright (c) 2015 Susisu
#
# Python 3.4.2
# `python3 main.py`

from fractions import gcd

def main():
    p = 1
    for i in range(1, 21):
        p *= i // gcd(p, i)
    print(p)

main()
