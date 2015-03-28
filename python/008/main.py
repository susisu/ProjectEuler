# ProjectEuler 008
# Python / main.py
# copyright (c) 2015 Susisu
#
# Python 3.4.2
# `python3 main.py`


def main():
    f = open("./digits.txt", "r")
    digits = f.readline()[0:-2]
    l = len(digits)
    n = 13
    m = 0
    for i in range(0, l - n + 1):
        p = 1
        for j in range(0, n):
            p *= int(digits[i + j])
        if p > m:
            m = p
    print(m)

main()
