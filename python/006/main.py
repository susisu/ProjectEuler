# ProjectEuler 006
# Python / main.py
# copyright (c) 2015 Susisu
#
# Python 3.4.2
# `python3 main.py`


def main():
    s = 0
    t = 0
    for i in range(1, 101):
        s += i
        t += i * i
    print(s * s - t)

main()
