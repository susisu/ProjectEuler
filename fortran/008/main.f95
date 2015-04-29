! ProjectEuler 008
! Fortran / main.f95
! copyright (c) 2015 Susisu

! GNU Fortran (Homebrew gcc 4.9.2_1) 4.9.2
! `gfortran -fdefault-integer-8 main.f95 -o bin/main`

program main
    implicit none
    character(1000) digits
    integer :: n = 13
    integer :: m = 0
    integer p, i, j
    open(10, file="./digits.txt", status="old")
    read(10, "(a1000)") digits
    close(10)
    do i = 1, 1000 - n
        p = 1
        do j = 1, n
            p = p * digit_to_int(digits(i + j : i + j))
        end do
        if (p > m) m = p
    end do
    print *, m
contains
    pure function digit_to_int(c)
        character, intent(in) :: c
        integer digit_to_int
        integer n
        n = ichar(c) - ichar("0")
        if (n < 0 .or. n > 9) then
            digit_to_int = 0
        else
            digit_to_int = n
        end if
    end function
end program main
