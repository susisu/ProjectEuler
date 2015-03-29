# ProjectEuler 009
# Python / main.py
# copyright (c) 2015 Susisu
#
# Python 3.4.2
# `python3 main.py`


def main():
    for a in range(1, 333):
        b = a
        while b < 1000 - a - b:
            if 2 * a * b - 2000 * (a + b) + 1000000 == 0:
                print(a * b * (1000 - a - b))
                return
            b += 1

main()
