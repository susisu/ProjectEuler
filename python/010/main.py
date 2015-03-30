# ProjectEuler 010
# Python / main.py
# copyright (c) 2015 Susisu
#
# Python 3.4.2
# `python3 main.py`

from math import sqrt, floor

def main():
    n = 2000000
    table = [True] * n
    table[0:1] = [False, False]
    for i in range(2, floor(sqrt(n)) + 1):
        if table[i]:
            for j in range(i * i, n, i):
                table[j] = False
    total = 0
    for i in range(0, n):
        if table[i]:
            total += i
    print(total)

main()
