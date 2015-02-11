# ProjectEuler 000
# Python / main.py
# copyright (c) 2015 Susisu
#
# Python 3.4.2
# `python3 main.py`


def main():
    sum = 0
    for n in range(1, 1000):
        if n % 3 == 0 or n % 5 == 0:
            sum += n
    print(sum)

main()
