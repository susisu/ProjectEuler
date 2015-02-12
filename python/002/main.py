# ProjectEuler 002
# Python / main.py
# copyright (c) 2015 Susisu
#
# Python 3.4.2
# `python3 main.py`


def main():
    sum = 0
    a = 0
    b = 1
    while a <= 4000000:
        a, b = b, a + b
        if a % 2 == 0:
            sum += a
    print(sum)

main()
