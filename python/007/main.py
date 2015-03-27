# ProjectEuler 007
# Python / main.py
# copyright (c) 2015 Susisu
#
# Python 3.4.2
# `python3 main.py`

from math import sqrt, floor

def main():
    counter = 0
    n = 1
    while counter < 10001:
        n += 1
        if isPrime(n):
            counter += 1
    print(n)

def isPrime(n):
    if n < 2:
        return False
    else:
        for i in range(2, floor(sqrt(n)) + 1):
            if n % i == 0:
                return False
        return True

main()
